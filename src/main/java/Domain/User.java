package Domain;

import java.util.List;

public class User {

    int userId;
    String fullname;
    Comment comment;
    Address addres;
    Card card;
    Account account;
    List<ShoppingCart> cart;

    public User() {
    }

    public User(String fullname) {
         this.fullname = fullname;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public Comment getComment() {
        return comment;
    }

    public void setComment(Comment comment) {
        this.comment = comment;
    }

    public Address getAddres() {
        return addres;
    }

    public void setAddres(Address addres) {
        this.addres = addres;
    }

    public Card getCard() {
        return card;
    }

    public void setCard(Card card) {
        this.card = card;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public List<ShoppingCart> getCart() {
        return cart;
    }

    public void setCart(List<ShoppingCart> cart) {
        this.cart = cart;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", fullname='" + fullname + '\'' +
                ", comment=" + comment +
                ", addres=" + addres +
                ", card=" + card +
                ", account=" + account +
                ", cart=" + cart +
                '}';
    }
}
