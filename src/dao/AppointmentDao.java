package dao;

import bean.Appointment;

import java.util.List;

public interface AppointmentDao {
    public boolean login(String doctor,String patient);
    public boolean register(Appointment appointment);
    public List<Appointment> getAppointmentAll();
    public boolean delete(String id);
    public boolean update(int id,int doctor,int patient,String healthissue);
}
