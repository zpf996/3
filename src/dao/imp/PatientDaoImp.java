package dao.imp;

import bean.Patient;
import dao.PatientDao;

import java.util.List;

public class PatientDaoImp implements PatientDao {
    @Override
    public boolean login(String name, String password) {
        return false;
    }

    @Override
    public boolean register(Patient patient) {
        return false;
    }

    @Override
    public List<Patient> getPatientAll() {
        return null;
    }

    @Override
    public boolean delete(int id) {
        return false;
    }

    @Override
    public boolean update(String id, String name, String familyname, String Age, String gender, String email, String contact, byte[] photo) {
        return false;
    }
}
