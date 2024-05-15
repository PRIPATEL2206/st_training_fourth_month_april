package com.example.crud

import android.os.Bundle
import android.widget.Button
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.widget.AppCompatButton


class MainActivity : AppCompatActivity() {

    var implicitIntentBtn : Button? = null // Nullable type

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        Toast.makeText(applicationContext, "onCreate called", Toast.LENGTH_LONG).show()
        implicitIntentBtn = findViewById(R.id.textView)
    }


    override fun onStart() {
        super.onStart()
        Toast.makeText(applicationContext, "onStart called", Toast.LENGTH_LONG).show()


    }

    override fun onRestart() {
        super.onRestart()
        Toast.makeText(applicationContext, "onRestart called", Toast.LENGTH_LONG).show()
    }

    override fun onPause() {
        super.onPause()
        Toast.makeText(applicationContext, "onPause called", Toast.LENGTH_LONG).show()
    }

    override fun onResume() {
        super.onResume()
        Toast.makeText(applicationContext, "onResume called", Toast.LENGTH_LONG).show()
    }

    override fun onStop() {
        super.onStop()
        Toast.makeText(applicationContext, "onStop called", Toast.LENGTH_LONG).show()
    }

    override fun onDestroy() {
        super.onDestroy()
        Toast.makeText(applicationContext, "onStop called", Toast.LENGTH_LONG).show()
    }
}
