package android.ui.gradisonfood.adapter;

import android.ui.gradisonfood.model.FoodModel;
import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import java.util.ArrayList;

public class FoodAdapter extends RecyclerView.Adapter<FoodViewHolder> {

    private ArrayList<FoodModel> foodList;

    @NonNull
    @Override
    public FoodViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        return null;
    }

    @Override
    public void onBindViewHolder(@NonNull FoodViewHolder holder, int position) {}

    @Override
    public int getItemCount() {
        return foodList.size();
    }
}
