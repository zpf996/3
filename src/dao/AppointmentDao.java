package dao;

import bean.Appointment;

import java.util.List;

public interface AppointmentDao {
    public boolean login(String doctor,String patient);
    public boolean register(int id,String doctor,String patient,String healthissue);
    public List<Appointment> getAppointAll();
    public boolean delete(String id);
    public boolean update(int id,String doctor,String patient,String healthissue);
}
