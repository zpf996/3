package servlet.list;

import bean.Doctor;
import dao.DoctorDao;
import dao.imp.DoctorDaoImp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class Doctor_list extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        DoctorDao ud = new DoctorDaoImp();
        List<Doctor> userAll = ud.getDoctorAll();
        request.setAttribute("userAll", userAll);
        request.getRequestDispatcher("/login_1.jsp").forward(request, response);
    }

}
