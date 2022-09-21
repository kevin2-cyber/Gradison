package android.ui.pizza.ui.food;


import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.ui.pizza.databinding.ActivityFoodBinding;

public class FoodActivity extends AppCompatActivity {

     ActivityFoodBinding binding;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        binding = ActivityFoodBinding.inflate(getLayoutInflater());
        super.onCreate(savedInstanceState);
        setContentView(binding.getRoot());
    }
}