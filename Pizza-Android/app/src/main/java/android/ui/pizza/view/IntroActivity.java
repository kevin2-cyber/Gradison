package android.ui.pizza.view;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
//import android.ui.pizza.MainActivity;
import android.ui.pizza.databinding.ActivityIntroBinding;
import android.ui.pizza.view.food.FoodActivity;

import java.util.Objects;

public class IntroActivity extends AppCompatActivity {

    ActivityIntroBinding binding;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        binding = ActivityIntroBinding.inflate(getLayoutInflater());
        super.onCreate(savedInstanceState);
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