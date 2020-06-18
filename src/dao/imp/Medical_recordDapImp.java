package dao.imp;

import bean.Doctor;
import bean.Medical_record;
import dao.Medical_recordDao;
import util.DBconn;

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
}
