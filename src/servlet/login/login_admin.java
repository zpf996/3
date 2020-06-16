package servlet.login;

import dao.imp.AdminDaoImp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class login_admin extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name=request.getParameter("name");
        String password=request.getParameter("password");
        AdminDaoImp ud=new AdminDaoImp();
        if(ud.login(name,password)){
            request.setAttribute("xiaoxin","欢迎用户"+name);
            request.getRequestDispatcher("/Admin_1.jsp").forward(request,response);
        }else{
            response.sendRedirect("login.jsp");
        }
    }
}
