package android.ui.pizza.ui;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.ui.pizza.databinding.ActivityIntroBinding;

public class IntroActivity extends AppCompatActivity {

    ActivityIntroBinding binding;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        binding = ActivityIntroBinding.inflate(getLayoutInflater());
        super.onCreate(savedInstanceState);
        setContentView(binding.getRoot());
    }
}