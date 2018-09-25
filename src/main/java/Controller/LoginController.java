package Controller;

import Dao.UserDao;
import Domain.User;

import javax.servlet.*;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

public class LoginController extends HttpServlet {

    @Override
    public void init() throws ServletException {

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher("Views/login.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

           // UserDao userDb=new UserDao();
            HashMap<String,User> users=(HashMap<String, User>) req.getSession().getAttribute("users");
       // System.out.println(users);
            String username = req.getParameter("uname");
            String pass = req.getParameter("upass");
            String checkbox =req.getParameter("check");


            User user=users.get(username);
            if(user!=null && user.getAccount().getPassword().equals(pass)){
                req.getSession().setAttribute("username",user.getAccount().getUserName());
                req.getSession().setAttribute("user",user);
                if(checkbox!=null){

                    Cookie cookie= new Cookie("username",user.getAccount().getUserName());
                    cookie.setMaxAge(2592000);
                    resp.addCookie(cookie);

                }
                else if(checkbox==null) {
                    System.out.println("Un checked.......");
                    for (Cookie cookie : req.getCookies()) {
                        if (cookie.getName().equals("username")) {
                            cookie.setMaxAge(0);
                            resp.addCookie(cookie);


                        }
                    }
                }


//resp.sendRedirect("thankyou");
                req.getRequestDispatcher("thankyou").forward(req,resp);


            }
            else{
                resp.sendRedirect("login");
            }

        }



}
