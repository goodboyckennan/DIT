package com.kennanseno.sqlite;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    EditText taskID;
    EditText taskName;
    EditText taskDesc;
    EditText taskStatus;
    Button addDatabutton;
    Button showDatabutton;
    TaskReader taskReader = new TaskReader(MainActivity.this);

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        taskID = (EditText) findViewById(R.id.IDEditText);
        taskName = (EditText) findViewById(R.id.TaskNameEditText);
        taskDesc = (EditText) findViewById(R.id.TaskDescEditText);
        taskStatus = (EditText) findViewById(R.id.TaskStatusEditText);

        addDatabutton = (Button) findViewById(R.id.addDataButton);
        addDatabutton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String id = taskID.getText().toString();
                String name = taskName.getText().toString();
                String desc = taskDesc.getText().toString();
                int status = Integer.parseInt(taskStatus.getText().toString());

                long x =taskReader.insertData(id, name, desc, status);
                Toast.makeText(MainActivity.this,"Data added with row id: " + x ,Toast.LENGTH_LONG).show();
            }
        });

        showDatabutton = (Button)findViewById(R.id.showDataButton);
        showDatabutton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(MainActivity.this, ShowDataActivity.class);
                startActivity(intent);
            }
        });

    }
}
