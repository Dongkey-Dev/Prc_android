package com.example.prc_layout

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        Log.d("abcd", "on create")
    }

    override fun onStart(){
        super.onStart()
        Log.d("abcd", "on start")
    }

    override fun onResume(){
        super.onResume()
        Log.d("abcd", "on resume")
    }
    override fun onStop(){
        super.onStop()
        Log.d("abcd", "on stop")
    }

    override fun onDestroy(){
        super.onDestroy()
        Log.d("abcd", "on destroy")
    }
}
