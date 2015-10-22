package com.kennanseno.mylist;


import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

public class CustomAdaptor extends ArrayAdapter<String> {

    public CustomAdaptor(Context context, String[] country) {
        super(context, R.layout.custom_row, country);
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        LayoutInflater kennanInflater = LayoutInflater.from(getContext());

        if(convertView ==  null){
            convertView = kennanInflater.inflate(R.layout.custom_row, parent, false);
        }

        String singleThingItem = getItem(position);

        TextView kennanText = (TextView) convertView.findViewById(R.id.kennanTextView);
        ImageView kennanImage = (ImageView) convertView.findViewById(R.id.kennanImage);

        kennanText.setText(singleThingItem);

        //check if value is ireland
        if(singleThingItem.equals("Ireland")) {
            kennanImage.setImageResource(R.drawable.ok);
        }else{
            kennanImage.setImageResource(R.mipmap.ic_launcher);
        }

        return convertView;
    }

    @Override
    public int getCount() {
        return super.getCount();
    }
}
