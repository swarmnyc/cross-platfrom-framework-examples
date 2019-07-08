package com.swarm.kn_example

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.text.Editable
import android.text.TextWatcher
import android.view.View
import com.swarm.kn_example.shared_code.greeting
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity(), TextWatcher {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        edit_text_name.addTextChangedListener(this)
    }

    override fun afterTextChanged(name: Editable?) {
        if (name != null) {
            if (name.isNotEmpty()) {
                text_view_greeting.visibility = View.VISIBLE
                text_view_greeting.text = greeting(name.toString())
            } else {
                text_view_greeting.visibility = View.GONE
            }
        }
    }

    override fun beforeTextChanged(p0: CharSequence?, p1: Int, p2: Int, p3: Int) {}
    override fun onTextChanged(p0: CharSequence?, p1: Int, p2: Int, p3: Int) {}
}
