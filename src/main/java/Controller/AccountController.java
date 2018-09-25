package Controller;

import Dao.UserDao;
import Domain.Account;
import Domain.Address;
import Domain.Card;
import Domain.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

public class AccountController extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().removeAttribute("username");
  resp.sendRedirect("login");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HashMap<String,User> users=(HashMap<String, User>) req.getSession().getAttribute("users");
        User user=users.get(req.getParameter("email"));
        user.setFullname(req.getParameter("fullname"));
        user.setAddres(new Address(req.getParameter("street"),req.getParameter("state"),req.getParameter("city"),
                req.getParameter("zip")));
        user.setCard(new Card(req.getParameter("cardno"),req.getParameter("exp"),Integer.parseInt(req.getParameter("cvv"))));
        user.setAccount(new Account(req.getParameter("email"),req.getParameter("pass")));
       // user.setUserId(new UserDao().genId());
       UserDao userDao= new UserDao();
       userDao.updateUser(user);
        req.getSession().setAttribute("users",userDao.getUsers());
        req.getSession().setAttribute("user",user);
        req.getSession().setAttribute("username",user.getAccount().getUserName());
       // System.out.println(user);
        req.getRequestDispatcher("Views/thankyou.jsp").forward(req,resp);
    }
}
