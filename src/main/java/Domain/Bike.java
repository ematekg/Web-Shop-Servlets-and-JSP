package Domain;

import java.util.ArrayList;
import java.util.List;

public class Bike {
    int pid;
    String pname;
    int price;
    String img;
    String category;
 ArrayList<Comment> comments;
    public Bike(int pid, String pname, int price, String img) {
        this.pid = pid;
        this.pname = pname;
        this.price = price;
        this.img = img;
    }

    public Bike(int pid, String pname, int price, String img, String category) {
        this.pid = pid;
        this.pname = pname;
        this.price = price;
        this.img = img;
        this.category = category;
    }

    public Bike(String pname, int price, String img) {
        this.pname = pname;
        this.price = price;
        this.img = img;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public ArrayList<Comment> getComments() {
        return comments;
    }

    public void setComments(ArrayList<Comment> comments) {
        this.comments = comments;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

}
