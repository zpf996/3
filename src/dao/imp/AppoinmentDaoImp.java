package dao.imp;

import bean.Appointment;
import dao.AppointmentDao;

import java.util.List;

public class AppoinmentDaoImp implements AppointmentDao {
    @Override
    public boolean login(String doctor, String patient) {
        return false;
    }

    @Override
    public boolean register(int id, String doctor, String patient, String healthissue) {
        return false;
    }

    @Override
    public List<Appointment> getAppointAll() {
        return null;
    }

    @Override
    public boolean delete(String id) {
        return false;
    }

    @Override
    public boolean update(int id, String doctor, String patient, String healthissue) {
        return false;
    }
}
