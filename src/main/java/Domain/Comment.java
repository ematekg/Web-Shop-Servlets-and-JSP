package Domain;

public class Comment {
    int rating;
    String title;
    String review;

    public Comment() {
        super();
    }

    public Comment(int rating, String title, String review) {
        this.rating = rating;
        this.title = title;
        this.review = review;
    }

    public Comment(String title, String review) {
        this.title = title;
        this.review = review;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getReview() {
        return review;
    }

    public void setReview(String review) {
        this.review = review;
    }
}
