package dao;

import bean.Doctor;
import bean.Medical_record;

import java.util.List;

public interface Medical_recordDao {
    //public boolean login(String name,String password);//login
    public List<Doctor> getDoctorAll();//Return to Doctor information collection
    public boolean register(Medical_record medical_record);//register
    //public boolean delete(int id);//delete
    //public boolean view(int id,String name,String qualificication,String speciallization,String experience,String contact,String email,String password);
    //public boolean update(int id,String name,String qualificication,String speciallization,String experience,String contact,String email);//view patient
}
