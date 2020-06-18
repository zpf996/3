package servlet.registered;

import bean.Doctor;
import bean.Medical_record;
import dao.DoctorDao;
import dao.Medical_recordDao;
import dao.imp.DoctorDaoImp;
import dao.imp.Medical_recordDapImp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class reg_medical_record extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int doctor_id= Integer.parseInt(request.getParameter("doctor"));
        int patient_id= Integer.parseInt(request.getParameter("patient"));
        int medicine_id= Integer.parseInt(request.getParameter("medicine_id"));
        String suggestion = request.getParameter("suggestion");
        String pe = request.getParameter("pe");

        Medical_record medical_record=new Medical_record();
        medical_record.setDoctor(doctor_id);
        medical_record.setPatient(patient_id);
        medical_record.setMedicine_id(medicine_id);
        medical_record.setSuggestion(suggestion);
        medical_record.setPhysical_examination(pe);

        Medical_recordDao ud = new Medical_recordDapImp();

        if(ud.register(medical_record)){
            request.getRequestDispatcher("/Doctor_view.jsp").forward(request, response);
        }else{

            response.sendRedirect("failed,jsp");
        }
    }
}
