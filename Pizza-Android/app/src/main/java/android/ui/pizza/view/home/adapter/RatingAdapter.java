package android.ui.pizza.view.home.adapter;

import android.ui.pizza.R;
import android.ui.pizza.view.home.viewholder.RatingViewHolder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

public class RatingAdapter extends RecyclerView.Adapter<RatingViewHolder> {
    @NonNull
    @Override
    public RatingViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.rating_item, parent, false);
        return new RatingViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull RatingViewHolder holder, int position) {

    }

    @Override
    public int getItemCount() {
        return 0;
    }
}
