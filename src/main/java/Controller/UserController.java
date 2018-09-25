package Controller;

import Dao.UserDao;
import Domain.Account;
import Domain.Address;
import Domain.Card;
import Domain.User;

import javax.print.DocFlavor;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UserController extends HttpServlet {

    User user;
    UserDao userDao;

    @Override
    public void init() throws ServletException {
        user=new User();
        userDao=new UserDao();

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        if(null!=req.getSession().getAttribute("username")){
            User u=userDao.getUserById((String)req.getSession().getAttribute("username"));
            System.out.println( u);
            req.getSession().setAttribute("user",u);
            req.getRequestDispatcher("Views/user.jsp").forward(req,resp);

        }
else {
            req.getRequestDispatcher("Views/login.jsp").forward(req,resp);
        }



    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        user.setFullname(req.getParameter("fullname"));
        user.setAddres(new Address(req.getParameter("street"),req.getParameter("state"),req.getParameter("city"),
                req.getParameter("zip")));
        user.setCard(new Card(req.getParameter("cardno"),req.getParameter("exp"),Integer.parseInt(req.getParameter("cvv"))));
        user.setAccount(new Account(req.getParameter("email"),req.getParameter("pass")));
        user.setUserId(new UserDao().genId());
        userDao.addUser(user);
        req.getSession().setAttribute("users",userDao.getUsers());
        req.getSession().setAttribute("user",user);
        req.getSession().setAttribute("username",user.getAccount().getUserName());
        System.out.println(user);
        req.getRequestDispatcher("Views/thankyou.jsp").forward(req,resp);

    }
}
