package Domain;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class ShoppingCart {
  HashMap<Integer,Integer> item;

    public ShoppingCart() {
        this.item = new HashMap<>();
    }

    public HashMap<Integer, Integer> getItem() {
        return item;
    }

   public void addItem(int id, int qty){
        item.put(id,qty);
   }
    public void removeItem(int id){
        item.remove(id);
    }
    public void removeAll (){
        item.clear();
    }

    @Override
    public String toString() {
        return "ShoppingCart{" +
                "item=" + item+
                '}';
    }
}
