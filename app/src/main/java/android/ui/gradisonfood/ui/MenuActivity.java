package android.ui.gradisonfood.ui;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.ui.gradisonfood.databinding.ActivityMenuBinding;

public class MenuActivity extends AppCompatActivity {

    ActivityMenuBinding binding;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        binding = ActivityMenuBinding.inflate(getLayoutInflater());
        super.onCreate(savedInstanceState);
        setContentView(binding.getRoot());
    }
}