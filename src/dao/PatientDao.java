package dao;
import bean.Patient;

import java.util.List;

public interface PatientDao {
    public boolean login(String name,String password);
    public boolean register(Patient patient);
    public List<Patient> getPatientAll();
    public boolean delete(int id);
    public boolean update(String id,String name,String familyname,String Age,String gender,String email,String contact,byte[] photo);
}
