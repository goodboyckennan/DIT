package com.kennanseno.lab9;

import android.os.AsyncTask;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {

    private final String DEBUG_TAG = "HttpExample";
    private EditText urlText;
    private Button connectButton;
    TaskReader taskReader = new TaskReader(MainActivity.this);
    ArrayList<Task> taskArrayList = new ArrayList<>();


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        urlText = (EditText) findViewById(R.id.urlText);
        connectButton = (Button) findViewById(R.id.connectButton);

        connectButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                //do something!
                String stringUrl = urlText.getText().toString();

                DownloadWebpageTask webPageDownloader = new DownloadWebpageTask();
                webPageDownloader.execute(stringUrl);
            }
        });
    }

    /* Use AsyncTask as an inner class to create a task away from the main UI thread. This task takes a URL string and uses it to create an HttpUrlConnection.
    Once the connection has been established, the AsyncTask downloads the contents of the webpage as an InputStream.
    Finally, the InputStream is converted into a string, which is displayed in the UI by the AsyncTask's onPostExecute method*/
    private class DownloadWebpageTask extends AsyncTask<String, Void, ArrayList<Task>>
    {
        protected ArrayList<Task> doInBackground(String... urls) {
            // params comes from the execute() call: params[0] is the url.
            try {
                JSONArray jsonArray = downloadUrl(urls[0]);


                for (int count = 0; count < jsonArray.length(); count++) {
                     JSONObject data = jsonArray.optJSONObject(count);

                    Task singleTask = new Task();

                    singleTask.setId(data.getInt("id"));
                    singleTask.setName(data.getString("title"));
                    singleTask.setStatus(data.getString("completed"));

                    //insert data
                    taskReader.insertData(Integer.toString(singleTask.getId()), singleTask.getName(), singleTask.getStatus());

                    taskArrayList.add(singleTask);
                }

                //return downloadUrl(urls[0]);
            } catch (JSONException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }

            return taskArrayList;
        }
        // onPostExecute displays the results of the AsyncTask.
        protected void onPostExecute(ArrayList<Task> tasks) {
            for(int count = 0; count < tasks.size(); count++){
                Task newTask = tasks.get(count);

                Log.d(DEBUG_TAG, "Data added -> Task ID is " + newTask.getId() + ", The title is " + newTask.getName() + ", Completed status is " + newTask.getStatus());
            }

            //Convert list of tasks back to json
            //not ideal to do it here, only for demo purposes
            String json = toJson(tasks);
            Log.d(DEBUG_TAG, json);

        }
    }
    // Given a URL, establishes an HttpUrlConnection and retrieves
// the web page content as a InputStream, which it returns as
// a string.
    private JSONArray downloadUrl(String myurl) throws IOException {
        InputStream is = null;
        JSONArray jsonArray = null;

        try {
            URL url = new URL(myurl);

            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setReadTimeout(10000 /* milliseconds */);
            conn.setConnectTimeout(15000 /* milliseconds */);
            conn.setRequestMethod("GET");
            conn.setDoInput(true);
            // Starts the query
            conn.connect();
            int response = conn.getResponseCode();
            Log.d(DEBUG_TAG, "The response is: " + response);

            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            StringBuilder sb = new StringBuilder();
            String line;
            while ((line = br.readLine()) != null) {
                sb.append(line+"\n");
            }
            br.close();

            // Convert the InputStream into a string
            jsonArray = new JSONArray(sb.toString());

            // Makes sure that the InputStream is closed after the app is
            // finished using it.
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jsonArray;
    }

    public String toJson(ArrayList<Task> tasks){

        JSONArray jsonArray = new JSONArray();

        for (int count = 0; count < tasks.size(); count++){

            JSONObject jsonObject = new JSONObject();

            try {
                jsonObject.put("id",tasks.get(count).getId());
                jsonObject.put("name",tasks.get(count).getName());
                jsonObject.put("status",tasks.get(count).getStatus());
            } catch (JSONException e) {
                e.printStackTrace();
            }

            jsonArray.put(jsonObject);
        }

        return jsonArray.toString();
    }

}


