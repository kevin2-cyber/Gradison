package android.ui.gradisonfood.ui;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.splashscreen.SplashScreen;

import android.content.Intent;
import android.os.Bundle;
import android.ui.gradisonfood.databinding.ActivityMainBinding;
import android.view.View;

public class MainActivity extends AppCompatActivity {

    // viewBinding
    ActivityMainBinding binding;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        binding = ActivityMainBinding.inflate(getLayoutInflater());
        super.onCreate(savedInstanceState);
        // Handle the SplashScreen transition
        SplashScreen splashScreen = SplashScreen.installSplashScreen(this);
        View decorView = getWindow().getDecorView();
        // Hide the status bar.
        int uiOptions = View.SYSTEM_UI_FLAG_FULLSCREEN;
        decorView.setSystemUiVisibility(uiOptions);

        setContentView(binding.getRoot());

        binding.btnGetStarted.setOnClickListener(view -> startActivity(new Intent(this, MenuActivity.class)));
    }
    
}