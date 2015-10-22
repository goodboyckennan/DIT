package com.kennanseno.mylist;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class newActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_new);
        Bundle extras = getIntent().getExtras();

        TextView countryText = (TextView) findViewById(R.id.countryTextView);
        countryText.setText(extras.getString("country"));

        Button backButton = (Button) findViewById(R.id.backButton);
        backButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(newActivity.this, MainActivity.class);
                startActivity(intent);
            }
        });
    }
}
