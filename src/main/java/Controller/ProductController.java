package Controller;

import Dao.BikeDao;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class ProductController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    int id= Integer.parseInt(req.getParameter("ids"));
        BikeDao bikes= new BikeDao();
        req.setAttribute("bike", bikes.getBikeById(id));



        req.getRequestDispatcher("Views/bike.jsp").forward(req,resp);



          }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        PrintWriter out =resp.getWriter();
        try{
            out.print(new ObjectMapper().writeValueAsString(req.getSession().getAttribute("cartqty")));
        }catch (JsonGenerationException e) {
            e.printStackTrace();
        }


    }
}
