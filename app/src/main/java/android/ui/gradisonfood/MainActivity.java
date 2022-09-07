package android.ui.gradisonfood;

import androidx.appcompat.app.AppCompatActivity;
import androidx.core.splashscreen.SplashScreen;

import android.os.Bundle;
import android.ui.gradisonfood.databinding.ActivityMainBinding;

public class MainActivity extends AppCompatActivity {

    // viewBinding
    ActivityMainBinding binding;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        binding = ActivityMainBinding.inflate(getLayoutInflater());
        super.onCreate(savedInstanceState);
        // Handle the SplashScreen transition
        SplashScreen splashScreen = SplashScreen.installSplashScreen(this);
        setContentView(binding.getRoot());
    }
}