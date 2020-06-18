package dao.imp;

import bean.Appointment;
import bean.Doctor;
import bean.Medical_record;
import dao.Medical_recordDao;
import util.DBconn;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Medical_recordDapImp implements Medical_recordDao {
    @Override
    public List<Doctor> getDoctorAll() {
        return null;
    }

    @Override
    public boolean register(Medical_record medical_record) {
        boolean flag = false;
        DBconn.init();
        int i =DBconn.addUpdDel("insert into medical_record (doctor_id,patient_id,suggestion,medicine_id,physicalexamination) "+
                "values('"+medical_record.getDoctor()+"" +
                "','"+medical_record.getPatient()+"" +
                "','"+medical_record.getSuggestion()+"" +
                "','"+medical_record.getMedicine_id()+"" +
                "','"+medical_record.getPhysical_examination()+"" +
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
    public List<Medical_record> getMedical_recordAll()
    {
        List<Medical_record> list = new ArrayList<Medical_record>();
        try {
            DBconn.init();
            ResultSet rs = DBconn.selectSql("select * from medical_record");
            while(rs.next()){
                Medical_record medical_record=new Medical_record();
                medical_record.setDoctor(rs.getInt("doctor_id"));
                medical_record.setPatient(rs.getInt("patient_id"));
                medical_record.setSuggestion(rs.getString("Suggestion"));
                medical_record.setPhysical_examination(rs.getString("physicalexamination"));
                medical_record.setMedicine_id(rs.getInt("medicine_id"));
                list.add(medical_record);
            }
            DBconn.closeConn();
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;

    }
}
