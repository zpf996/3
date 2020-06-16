package dao;

import bean.Appointment;
import bean.Medicine;

import java.util.List;

public interface MedicineDao {
    public boolean login(String doctor,String patient);
    public boolean register(int id,String name,String type,String dosage,String quantity,String price);
    public List<Medicine> getMedicineAll();
    public boolean delete(String id);
    public boolean update(int id,String name,String type,String dosage,String quantity,String price);
}
