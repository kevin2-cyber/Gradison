package android.ui.gradisonfood.model;

public class FoodModel {

    private int image;
    private int backgroundColor;
    private String foodName;

    public FoodModel(int image, String foodName, int backgroundColor) {
        this.image = image;
        this.foodName = foodName;
        this.backgroundColor = backgroundColor;
    }

    public int getImage() {
        return image;
    }

    public void setImage(int image) {
        this.image = image;
    }

    public int getBackgroundColor() {
        return backgroundColor;
    }

    public void setBackgroundColor(int backgroundColor) {
        this.backgroundColor = backgroundColor;
    }

    public String getFoodName() {
        return foodName;
    }

    public void setFoodName(String foodName) {
        this.foodName = foodName;
    }
}
