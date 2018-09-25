package Dao;

import Domain.Account;
import Domain.Bike;
import Domain.Comment;
import Domain.User;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UserDao {

    HashMap<String, User> bikeDb = new HashMap<>();

    {
        User user1=new User("john adams");
        user1.setAccount(new Account("john@gmail.com","123"));

        User user2=new User("sam terry");
        user2.setAccount(new Account("ella@gmail.com","123"));

        User user3=new User("sam davis");
        user3.setAccount(new Account("sam@gmail.com","123"));


        bikeDb.put(user1.getAccount().getUserName(), user1);
        bikeDb.put(user1.getAccount().getUserName(), user1);
        bikeDb.put(user1.getAccount().getUserName(), user1);

    }

    public void addUser(User user){
        bikeDb.put(user.getAccount().getUserName(), user);
    }

    public void deleteUser(String username){
        bikeDb.remove(username);
    }

    public void updateUser(User user){
        bikeDb.put(user.getAccount().getUserName(), user);
    }

    public HashMap<String,User> getUsers(){
        return bikeDb;
    }

    public User getUserById(String username){
        return bikeDb.get(username);
    }

    public int genId() {
        return bikeDb.size()+1;
    }
}
