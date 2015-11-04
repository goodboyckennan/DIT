package com.kennanseno.sqlite;


import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.ListAdapter;
import android.widget.ListView;

public class ShowDataActivity extends AppCompatActivity {

    TaskReader taskReader = new TaskReader(ShowDataActivity.this);

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_show_data);

        /* Few to get only finished tasks with current structure of code
           1. Hard code it in the select statement. i.e. WHERE status=1;
           2. add parameter in getTask for the status and use that in the select statement
           3. get all tasks but only output tasks have been completed in Adapter. i.e. if(task.status = 1){ don't add to list}
         */

        taskReader.open();
        ListAdapter taskAdapter = new TaskAdapter(this, taskReader.getTasks());
        ListView taskListView = (ListView)findViewById(R.id.taskListView);
        taskListView.setAdapter(taskAdapter);
        taskReader.close();
    }
}
