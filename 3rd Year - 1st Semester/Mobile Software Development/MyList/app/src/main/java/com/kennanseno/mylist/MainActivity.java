package com.kennanseno.mylist;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;


public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        final String[] country = {"Philippines","Ireland","USA","Germany","Mexico","Netherlands","China","Holland","Singapore","Venezuela"};

        ListAdapter kennanAdapter = new CustomAdaptor(this, country);
        final ListView kennanListView = (ListView)findViewById(R.id.listView);
        kennanListView.setAdapter(kennanAdapter);

        kennanListView.setOnItemClickListener(
                new AdapterView.OnItemClickListener() {
                    @Override
                    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                       String c = country[position];
                       Intent intent = new Intent(MainActivity.this, newActivity.class);
                        intent.putExtra("country", c);
                        startActivity(intent);
                    }
                }
        );
    }
}
