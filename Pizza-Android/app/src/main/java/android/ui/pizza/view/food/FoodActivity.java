package android.ui.pizza.view.food;


import androidx.appcompat.app.AppCompatActivity;
import androidx.viewpager.widget.ViewPager;

import android.content.Intent;
import android.os.Bundle;
import android.ui.pizza.R;
import android.ui.pizza.databinding.ActivityFoodBinding;
import android.ui.pizza.view.IntroActivity;

import com.google.android.material.tabs.TabLayout;

import java.util.Objects;

public class FoodActivity extends AppCompatActivity {

    // enable viewBinding
     ActivityFoodBinding binding;

     // creating an object of ViewPager
    ViewPager mViewPager;

    // creating an object of TabLayout
    TabLayout mTabLayout;

    // images array
    int[] images = {R.drawable.chickenburger, R.drawable.cheseburger, R.drawable.img,
            R.drawable.imagebkg, R.drawable.shopping};

    ViewPagerAdapter mViewPagerAdapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        binding = ActivityFoodBinding.inflate(getLayoutInflater());
        super.onCreate(savedInstanceState);
        setContentView(binding.getRoot());

        binding.ibArrow.setOnClickListener(view -> startActivity(new Intent(this, IntroActivity.class)));

        Objects.requireNonNull(getSupportActionBar()).hide();

        // Initializing the viewPager object
        mViewPager = binding.vpPager;

        // Initializing the TabLayout object
        mTabLayout = binding.tabLayout;

        // Initializing the ViewPagerAdapter
        mViewPagerAdapter = new ViewPagerAdapter(this, images);

        // adding the adapter to the ViewPager
        mViewPager.setAdapter(mViewPagerAdapter);

        // setting up the viewPager with tab layout
        mTabLayout.setupWithViewPager(mViewPager);
    }
}