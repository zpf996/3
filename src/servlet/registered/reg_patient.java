package servlet.registered;

import bean.Doctor;
import bean.Patient;
import dao.DoctorDao;
import dao.PatientDao;
import dao.imp.DoctorDaoImp;
import dao.imp.PatientDaoImp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class reg_patient extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id= Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name"); //获取jsp页面传过来的参数
        String password = request.getParameter("password");
        String familyname = request.getParameter("familyname");
        String age = request.getParameter("age");
        String gender = request.getParameter("gender");
        String email = request.getParameter("email");
        String contact = request.getParameter("contact");
        String photo=request.getParameter("photo");

        Patient user = new Patient(); //实例化一个对象，组装属性
        user.setId(id);
        user.setPassword(password);
        user.setPatientName(name);
        user.setFamilyName(familyname);
        user.setAge(age);
        user.setGender(gender);
        user.setEmail(email);
        user.setContact(contact);
        user.setPhoto(photo);


        PatientDao ud = new PatientDaoImp();

        if(ud.register(user)){
            request.setAttribute("username", name);  //向request域中放置参数
            //request.setAttribute("xiaoxi", "注册成功");
            request.getRequestDispatcher("/login_patient.jsp").forward(request, response);  //转发到登录页面
        }else{

            response.sendRedirect("index.jsp");//重定向到首页
        }
    }

}
