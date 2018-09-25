package Controller;

import Dao.BikeDao;
import Dao.UserDao;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ProductListController extends HttpServlet {
    private BikeDao dao;
    ObjectMapper mapper = new ObjectMapper();

    @Override
    public void init() throws ServletException {
        dao = new BikeDao();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getSession().setAttribute("users",new UserDao().getUsers());
        req.getSession().setAttribute("bikes",dao.getAllBikes());
        //  resp.sendRedirect("/Views/home.jsp");
        req.getRequestDispatcher("/Views/home.jsp").forward(req,resp);


    }



    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
