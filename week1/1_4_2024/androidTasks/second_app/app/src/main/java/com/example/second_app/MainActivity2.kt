package com.example.second_app

import android.content.Intent
import android.net.Uri
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button

class MainActivity2 : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main2)

        var back_btn : Button = findViewById(R.id.back_btn)

        back_btn.setOnClickListener {
            onBackPressed()
        }

        var url_btn : Button = findViewById(R.id.url_btn)
        url_btn.setOnClickListener {
            var url = "https://www.google.com"
            var i2 = Intent(Intent.ACTION_VIEW, Uri.parse(url))
            startActivity(i2)
        }
    }


    override fun onBackPressed() {
        super.onBackPressed()
        finish() // Close the current activity and return to the previous one
    }
}