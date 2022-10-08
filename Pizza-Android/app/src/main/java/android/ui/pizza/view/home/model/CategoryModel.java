package android.ui.pizza.view.home.model;

public class CategoryModel {

    private int emoji;
    private String categoryName;

    public CategoryModel(int emoji, String categoryName) {
        this.emoji = emoji;
        this.categoryName = categoryName;
    }

    public int getEmoji() {
        return emoji;
    }

    public void setEmoji(int emoji) {
        this.emoji = emoji;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }
}
