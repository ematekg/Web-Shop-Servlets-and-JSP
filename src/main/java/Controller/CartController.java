package Controller;

import Domain.Bike;
import Domain.ShoppingCart;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.cfg.MapperConfig;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

public class CartController extends HttpServlet {

    ShoppingCart shoppingCart;

    @Override
    public void init() throws ServletException {
       shoppingCart=new ShoppingCart();


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //System.out.println(req.getPathInfo());
        if(req.getParameter("clr")!=null){
                    shoppingCart.removeAll();
            req.getSession().removeAttribute("sc");
            req.getSession().removeAttribute("cartqty");
            req.getSession().removeAttribute("sitems");
            req.getRequestDispatcher("Views/home.jsp").forward(req,resp);
        }
        int qty=0;
        HashMap<String,Object> result =
                new ObjectMapper().readValue(req.getParameter("cart").toString(), HashMap.class);

      if(shoppingCart.getItem().get(Integer.parseInt(result.get("id").toString()))!=null){

          shoppingCart.removeItem(Integer.parseInt(result.get("id").toString()));

        }
        else {
          shoppingCart.addItem(Integer.parseInt(result.get("id").toString()),Integer.parseInt(result.get("qty").toString()));


      }

        for(Integer currentKey : shoppingCart.getItem().keySet()){
            qty=qty+shoppingCart.getItem().get(currentKey);
        }
        System.out.println(shoppingCart.getItem());
        req.getSession().setAttribute("sc",shoppingCart.getItem());
        req.getSession().setAttribute("cartqty",qty);
        updateSession(req);


    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       // System.out.println("arrived");
       updateSession(req);
       req.getRequestDispatcher("/Views/itemlist.jsp").forward(req,resp);


    }


    public void updateSession(HttpServletRequest req){
        HashMap<Integer, Bike> selitems=new HashMap<>();
        HashMap<Integer,Integer> cart= (HashMap<Integer, Integer>) req.getSession().getAttribute("sc");

        for(int key:cart.keySet()){
            for(Bike bike : (ArrayList<Bike>)req.getSession().getAttribute("bikes")){
                if(bike.getPid()==key){
                    selitems.put(bike.getPid(),bike);
                }

            }

        }

        req.getSession().setAttribute("sitems",selitems);
    }

}
