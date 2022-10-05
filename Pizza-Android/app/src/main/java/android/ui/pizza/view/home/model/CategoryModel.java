package android.ui.pizza.view.home.model;

public class CategoryModel {

    private String emoji;
    private String categoryName;

    public CategoryModel(String emoji, String categoryName) {
        this.emoji = emoji;
        this.categoryName = categoryName;
    }

    public String getEmoji() {
        return emoji;
    }

    public void setEmoji(String emoji) {
        this.emoji = emoji;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }
}
