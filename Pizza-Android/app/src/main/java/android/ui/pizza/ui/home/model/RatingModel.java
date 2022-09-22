package android.ui.pizza.ui.home.model;

public class RatingModel {

    private String rating;
    private int burgerImage;
    private String burgerName;
    private String burgerContent;
    private String price;

    public RatingModel(String rating, int burgerImage, String burgerName, String burgerContent, String price) {
        this.rating = rating;
        this.burgerImage = burgerImage;
        this.burgerName = burgerName;
        this.burgerContent = burgerContent;
        this.price = price;
    }

    public String getRating() {
        return rating;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }

    public int getBurgerImage() {
        return burgerImage;
    }

    public void setBurgerImage(int burgerImage) {
        this.burgerImage = burgerImage;
    }

    public String getBurgerName() {
        return burgerName;
    }

    public void setBurgerName(String burgerName) {
        this.burgerName = burgerName;
    }

    public String getBurgerContent() {
        return burgerContent;
    }

    public void setBurgerContent(String burgerContent) {
        this.burgerContent = burgerContent;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }
}
