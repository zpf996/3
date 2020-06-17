package servlet.login;

import bean.Doctor;
import dao.DoctorDao;
import dao.imp.AdminDaoImp;
import dao.imp.DoctorDaoImp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

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


//        DoctorDao wd = new DoctorDaoImp();
//        List<Doctor> userAll = wd.getDoctorAll();
//        request.setAttribute("userAll", userAll);

        if(ud.login(name,password)){
            //request.setAttribute("xiaoxin","欢迎用户"+name);
            request.getRequestDispatcher("/Admin_1.jsp").forward(request,response);
        }else{
            response.sendRedirect("login.jsp");
        }
    }
}
