package Dao;

import Domain.Bike;
import Domain.Comment;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class BikeDao {



    Map<Integer, Bike> bikeDb = new HashMap<>();

    {

     Comment c1=new Comment("Good Experience","I have a good experince with this bike");
        Comment c2=new Comment("Medium Experience","I have a medium experince with this bike");
        Comment c3=new Comment("Bad Experience","I have a bad experince with this bike");
        ArrayList<Comment> comments=new ArrayList<>();
        comments.add(c1);comments.add(c2);comments.add(c3);
Bike b1=new Bike(1, "5 Terre",700, "/Resources/images/bikes/Diamondback.jpg","Diamondback");
        Bike b2=new Bike(2, "Monterosso",1200, "/Resources/images/bikes/DiamondbackImpression24(2017).jpg","Boys");
        Bike b3=new Bike(3, "Vernazza",900, "/Resources/images/bikes/GiantARX2(2018).jpg","Giant");
b1.setComments(comments);
        b2.setComments(comments);
        b3.setComments(comments);


        bikeDb.put(1, b1);
        bikeDb.put(2, b2);
        bikeDb.put(3,b3 );
        bikeDb.put(4, new Bike(4, "Manarola",1000, "/Resources/images/bikes/GiantDefyAdvanced2(2019).jpg","Diamondback"));
        bikeDb.put(5, new Bike(5, "Manarola",1000,"/Resources/images/bikes/GiantEscape3(2018).jpg","Giant"));
        bikeDb.put(6, new Bike(6, "Manarola",1000, "/Resources/images/bikes/GiantSedona(2019).jpg","Boys"));

        bikeDb.put(7, new Bike(1, "5 Terre",700, "/Resources/images/bikes/GiantTalon29er3(2018).jpg","Diamondback"));
        bikeDb.put(8, new Bike(2, "Monterosso",1200, "/Resources/images/bikes/GiantTCRAdvancedSL2.jpg","Boys"));
        bikeDb.put(9, new Bike(3, "Vernazza",900, "/Resources/images/bikes/GiantTCXEspoir26(2019).jpg","29\" Mountain Bikes"));

        bikeDb.put(10, new Bike(1, "5 Terre",700, "/Resources/images/bikes/GiantTCXSLR2(2018).jpg","26\" Mountain Bikes"));
        bikeDb.put(11, new Bike(2, "Monterosso",1200, "/Resources/images/bikes/GiantTrance2(2018).jpg","Girls"));
        bikeDb.put(12, new Bike(3, "Vernazza",900, "/Resources/images/bikes/GT StomperAce24(2018).jpg","Diamondback"));
    }

    public void addProduct(Bike bike){
        bikeDb.put(bike.getPid(), bike);
    }

    public void deleteProduct(int bikeId){
        bikeDb.remove(bikeId);
    }

    public void updateProduct(Bike bike){
        bikeDb.put(bike.getPid(), bike);
    }

    public List<Bike> getAllBikes(){
        return new ArrayList<>(bikeDb.values());
    }

    public Bike getBikeById(int bikeid){
        return bikeDb.get(bikeid);
    }

    public int genId() {
        return bikeDb.size()+1;
    }
}
