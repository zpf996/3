package servlet.registered;

import bean.Appointment;
import bean.Doctor;
import bean.Medical_record;
import dao.AppointmentDao;
import dao.DoctorDao;
import dao.Medical_recordDao;
import dao.imp.AppoinmentDaoImp;
import dao.imp.DoctorDaoImp;
import dao.imp.Medical_recordDapImp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class reg_appointment extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id= Integer.parseInt(request.getParameter("id"));
        int doctor_id= Integer.parseInt(request.getParameter("doctor"));
        int patient_id= Integer.parseInt(request.getParameter("patient"));
        String health_issue = request.getParameter("healthissue");

        Appointment appointment=new Appointment();
        appointment.setId(id);
        appointment.setDoctor_id(doctor_id);
        appointment.setPatient_id(patient_id);
        appointment.setHealthissue(health_issue);

        AppointmentDao ud = new AppoinmentDaoImp();

        if(ud.register(appointment)){
            request.setAttribute("patient_id", patient_id);  //向request域中放置参数
            request.getRequestDispatcher("/Patient_view.jsp").forward(request, response);
        }else{

            response.sendRedirect("failed.jsp");
        }
    }
}
