package android.ui.gradisonfood.ui;

import androidx.appcompat.app.AppCompatActivity;

import android.graphics.Typeface;
import android.os.Bundle;
import android.ui.gradisonfood.databinding.ActivityMenuBinding;

public class MenuActivity extends AppCompatActivity {

    ActivityMenuBinding binding;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        binding = ActivityMenuBinding.inflate(getLayoutInflater());
        super.onCreate(savedInstanceState);
        setContentView(binding.getRoot());



        // Font path
        String fontPath = "fonts/montserrat_regular.ttf";

        // Loading Font Face
        Typeface m_typeFace = Typeface.createFromAsset(getAssets(), fontPath);

        // Applying font
        binding.menu.setTypeface(m_typeFace);
    }
}