package servlet.registered;

import bean.Doctor;
import dao.DoctorDao;
import dao.imp.DoctorDaoImp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class reg_Doctor extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id= Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name"); //获取jsp页面传过来的参数
        String password = request.getParameter("password");
        String qualification = request.getParameter("qualification");
        String specialization = request.getParameter("specialization");
        String experience = request.getParameter("experience");
        String contact = request.getParameter("contact");
        String email = request.getParameter("email");

        Doctor user = new Doctor(); //实例化一个对象，组装属性
        user.setId(id);
        user.setDoctorName(name);
        user.setQualification(qualification);
        user.setSpecialization(specialization);
        user.setExperience(experience);
        user.setEmail(email);
        user.setContact(contact);
        user.setPassword(password);
        user.ss();

        DoctorDao ud = new DoctorDaoImp();

        if(ud.register(user)){
            request.setAttribute("username", name);  //向request域中放置参数
            //request.setAttribute("xiaoxi", "注册成功");
            request.getRequestDispatcher("/login_doctor.jsp").forward(request, response);  //转发到登录页面
        }else{

            response.sendRedirect("index.jsp");//重定向到首页
        }
    }


}
