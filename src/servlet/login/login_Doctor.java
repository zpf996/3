package servlet.login;

import dao.imp.DoctorDaoImp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class login_Doctor extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name=request.getParameter("name");
        String password=request.getParameter("password");
        DoctorDaoImp ud=new DoctorDaoImp();
        if(ud.login(name,password)){
            //request.setAttribute("xiaoxin","欢迎用户"+name);
            request.getRequestDispatcher("/Doctor_view.jsp").forward(request,response);
        }else{
            response.sendRedirect("login.jsp");
        }
    }
}
