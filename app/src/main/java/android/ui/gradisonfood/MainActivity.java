package android.ui.gradisonfood;

import androidx.appcompat.app.AppCompatActivity;
import androidx.core.splashscreen.SplashScreen;

import android.os.Build;
import android.os.Bundle;
import android.ui.gradisonfood.databinding.ActivityMainBinding;
import android.view.WindowManager;

public class MainActivity extends AppCompatActivity {

    // viewBinding
    ActivityMainBinding binding;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        binding = ActivityMainBinding.inflate(getLayoutInflater());
        super.onCreate(savedInstanceState);
        // Handle the SplashScreen transition
        SplashScreen splashScreen = SplashScreen.installSplashScreen(this);
            getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
                    WindowManager.LayoutParams.FLAG_FULLSCREEN);

        setContentView(binding.getRoot());
    }
}