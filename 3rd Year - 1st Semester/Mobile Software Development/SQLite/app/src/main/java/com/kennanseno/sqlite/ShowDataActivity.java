package com.kennanseno.sqlite;


import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Toast;

import java.util.ArrayList;

public class ShowDataActivity extends AppCompatActivity {

    TaskReader taskReader = new TaskReader(ShowDataActivity.this);
    ArrayList<Task> taskList = new ArrayList<Task>();

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
        taskList = taskReader.getTasks();
        ListAdapter taskAdapter = new TaskAdapter(this, taskList);
        ListView taskListView = (ListView)findViewById(R.id.taskListView);
        taskListView.setAdapter(taskAdapter);
        taskReader.close();

        taskListView.setOnItemClickListener(
                new AdapterView.OnItemClickListener() {
                    @Override
                    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                        if(taskList.get(position).getStatus() == 1){
                            Toast.makeText(ShowDataActivity.this,"Task is complete",Toast.LENGTH_SHORT).show();
                        }else{
                            Toast.makeText(ShowDataActivity.this,"This task is not complete",Toast.LENGTH_SHORT).show();
                        }

                    }
                }
        );
    }
}
