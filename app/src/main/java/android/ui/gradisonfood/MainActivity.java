package android.ui.gradisonfood;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.ui.gradisonfood.databinding.ActivityMainBinding;

public class MainActivity extends AppCompatActivity {

    // viewBinding
    ActivityMainBinding binding;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        binding = ActivityMainBinding.inflate(getLayoutInflater());
        super.onCreate(savedInstanceState);
        setTheme(R.style.Theme_GradisonFood);
        setContentView(binding.getRoot());
    }
}