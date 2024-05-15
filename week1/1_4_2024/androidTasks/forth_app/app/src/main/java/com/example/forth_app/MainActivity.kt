package com.example.forth_app

import android.os.Bundle
import androidx.activity.enableEdgeToEdge
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.app.AppCompatDelegate
import androidx.core.os.LocaleListCompat
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat
import com.example.forth_app.databinding.ActivityMainBinding

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        val binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)


        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.main)) { v, insets ->
            val systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars())
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom)
            insets
        }
        binding.hinBtn.text = "Hindi"
        binding.hinBtn.setOnClickListener{
            if(binding.hinBtn.text == "Hindi"){
            AppCompatDelegate.setApplicationLocales(
                LocaleListCompat.forLanguageTags("hi")
            )

            binding.hinBtn.text = "Eng"
            }
            else if(binding.hinBtn.text == "Eng"){
                AppCompatDelegate.setApplicationLocales(
                    LocaleListCompat.forLanguageTags("en")
                )
                binding.hinBtn.text = "Hindi"
            }
        }

    }
}