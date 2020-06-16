package dao;
import bean.Admin;
import bean.Doctor;
import java.util.List;
public interface DoctorDao {
    public boolean login(String name,String password);//login
    public List<Doctor> getDoctorAll();//Return to Doctor information collection
    public boolean register(Doctor daocor);//register
    public boolean delete(char id);//delete
    public boolean update(String id,String name,String qualificication,String speciallization,String experience,String contact,String email,String password);//view patient

}
