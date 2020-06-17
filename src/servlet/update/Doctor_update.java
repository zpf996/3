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
        String password = request.getParameter("password");
        String q = request.getParameter("Qualification");
        String s = request.getParameter("s");
        String e = request.getParameter("e");
        String c = request.getParameter("c");
        String e1 = request.getParameter("e1");

        DoctorDao ud = new DoctorDaoImp();

        if(ud.update(userId, name, q, s, e, c,e1,password)){
            //request.setAttribute("xiaoxi", "更新成功");
            request.getRequestDispatcher("/Doctor_list").forward(request, response);
        }else{
            response.sendRedirect("index.jsp");
        }
    }
}
