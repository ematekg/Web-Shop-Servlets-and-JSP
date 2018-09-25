package Controller;

import Dao.UserDao;
import Domain.Comment;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


public class CommentController extends HttpServlet {
   // ObjectMapper mapper = new ObjectMapper();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        req.getSession().setAttribute("users",new UserDao().getUsers());
//        req.getRequestDispatcher("Views/bike.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        System.out.println("hi comment 1");
       // Product product = mapper.readValue(request.getParameter("product"), Product.class);
        Comment comment = mapper.readValue(req.getParameter("allcomment"), Comment.class);
        System.out.println("hi comment 2");
        System.out.println(comment.toString());

        PrintWriter out =resp.getWriter();//this sends to the java script.
        try{
            out.print(mapper.writeValueAsString(comment));

        }
        catch (JsonGenerationException e) {
            e.printStackTrace();
        }
    }
}
