package android.ui.gradisonfood.model;

public class FoodModel {

    private int image;
    private String foodName;

    public FoodModel(int image, String foodName) {
        this.image = image;
        this.foodName = foodName;
    }

    public int getImage() {
        return image;
    }

    public void setImage(int image) {
        this.image = image;
    }

    public String getFoodName() {
        return foodName;
    }

    public void setFoodName(String foodName) {
        this.foodName = foodName;
    }
}
