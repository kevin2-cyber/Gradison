package android.ui.pizza.view;

import androidx.appcompat.app.AppCompatActivity;
import androidx.core.splashscreen.SplashScreen;

import android.content.Intent;
import android.os.Bundle;
//import android.ui.pizza.MainActivity;
import android.ui.pizza.R;
import android.ui.pizza.databinding.ActivityIntroBinding;
import android.ui.pizza.view.food.FoodActivity;

import java.util.Objects;

public class IntroActivity extends AppCompatActivity {

    ActivityIntroBinding binding;

    //140.82.121.3

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        binding = ActivityIntroBinding.inflate(getLayoutInflater());
        super.onCreate(savedInstanceState);
        SplashScreen splashScreen = SplashScreen.installSplashScreen(this);
        setContentView(binding.getRoot());

        Objects.requireNonNull(getSupportActionBar()).hide();

        binding.btnStart.setOnClickListener(view -> {
            startActivity(new Intent(this, FoodActivity.class));
            finish();
        });
    }

    @Override
    public boolean onSupportNavigateUp() {
        onBackPressed();
        return super.onSupportNavigateUp();
    }
}