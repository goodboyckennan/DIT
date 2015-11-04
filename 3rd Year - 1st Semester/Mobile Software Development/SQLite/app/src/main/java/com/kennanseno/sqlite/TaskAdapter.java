package com.kennanseno.sqlite;



import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

import java.util.ArrayList;

public class TaskAdapter extends ArrayAdapter<Task> {

    public TaskAdapter(Context context, ArrayList<Task> taskArrayList){
        super(context,R.layout.data_listview_row, taskArrayList);
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        LayoutInflater taskInflater = LayoutInflater.from(getContext());

        if(convertView ==  null) {
            convertView = taskInflater.inflate(R.layout.data_listview_row, parent, false);
        }

        Task singleTask = getItem(position);

        TextView taskIdTextView = (TextView)convertView.findViewById(R.id.taskIdTextView);
        TextView taskNameTextview = (TextView)convertView.findViewById(R.id.taskNameTextView);
        TextView taskDescTextView = (TextView)convertView.findViewById(R.id.taskDescTextView);
        TextView taskStatusTextView = (TextView)convertView.findViewById(R.id.taskStatusTextView);

        taskIdTextView.setText("ID: " + Integer.toString(singleTask.getId()));
        taskNameTextview.setText("Name: " + singleTask.getName());
        taskDescTextView.setText("Description: " + singleTask.getDesc());
        taskStatusTextView.setText("Status: " + Integer.toString(singleTask.getStatus()));

        return convertView;
    }

    @Override
    public int getCount() {
        return super.getCount();
    }
}
