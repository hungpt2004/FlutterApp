package com.phamhung.hungptfpt;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        String bonus = " Làm ăn lâu vc";
        String add = "con cặc";
        int  num = 100;
        Log.d("HUNGPHAM", bonus +"-"+num+" "+add);
    }
}