package dao.imp;

import bean.Appointment;
import bean.Doctor;
import dao.AppointmentDao;
import util.DBconn;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AppoinmentDaoImp implements AppointmentDao {
    @Override
    public boolean login(String doctor, String patient) {
        return false;
    }

    @Override
    public boolean register(Appointment appointment) {
        boolean flag = false;
        DBconn.init();
        int i =DBconn.addUpdDel("insert into appointment (id,doctor_id,patient_id,health issue) "+
                "values('"+appointment.getId()+"" +
                "','"+appointment.getDoctor_id()+"" +
                "','"+appointment.getPatient_id()+"" +
                "','"+appointment.getHealthissue()+"" +
                "')");
        if(i>0){
            flag = true;
        }
        else{
            System.out.println("insert error");
        }
        DBconn.closeConn();
        return flag;
    }

    @Override
    public List<Appointment> getAppointmentAll() {
        List<Appointment> list = new ArrayList<Appointment>();
        try {
            DBconn.init();
            ResultSet rs = DBconn.selectSql("select * from appointment");
            while(rs.next()){
                Appointment appointment=new Appointment();
                appointment.setId(rs.getInt("id"));
                appointment.setDoctor_id(rs.getInt("doctor_id"));
                appointment.setPatient_id(rs.getInt("patient_id"));
                appointment.setHealthissue(rs.getString("health issue"));
                list.add(appointment);
            }
            DBconn.closeConn();
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean delete(String id) {
        return false;
    }

    @Override
    public boolean update(int id, int doctor, int patient, String healthissue) {
        return false;
    }
}
