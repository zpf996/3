package servlet.update;

import dao.DoctorDao;
import dao.imp.DoctorDaoImp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Doctor_update extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String id = request.getParameter("id");
        int userId = Integer.parseInt(id);

        String name = request.getParameter("name");

        String q = request.getParameter("Qualification");
        String s = request.getParameter("Specialization");
        String e = request.getParameter("Experience");
        String c = request.getParameter("Contact");
        String e1 = request.getParameter("Email");

        DoctorDao ud = new DoctorDaoImp();

        if(ud.update(userId, name, q, s, e, c,e1)){
            //request.setAttribute("xiaoxi", "更新成功");
            request.getRequestDispatcher("/Admin_1.jsp").forward(request, response);
        }else{
            response.sendRedirect("failed.jsp");
        }
    }
}
