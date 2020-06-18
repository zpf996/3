package dao.imp;

import bean.Doctor;
import bean.Patient;
import dao.PatientDao;
import util.DBconn;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PatientDaoImp implements PatientDao {
    @Override
    public boolean login(String name, String password) {
        boolean flag=false;
            try{
                DBconn.init();
                ResultSet rs=DBconn.selectSql("select * from patient where PatientName='"+name+"'and Password='"+password+"'");
                while(rs.next()){
                    if(rs.getString("PatientName").equals(name)&&
                            rs.getString("Password").equals(password)){
                        flag=true;
                    }
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        return flag;
    }

    @Override
    public boolean register(Patient patient) {
        boolean flag=false;
        DBconn.init();
        int i =DBconn.addUpdDel("insert into patient(Patient_Id,Password,PatientName,FatherHusbandName,Age,Gender,Contact,EmailID,Photograph) " +
                "values('"+patient.getId()+"" +
                "','"+patient.getPassword()+"" +
                "','"+patient.getPatientName()+"" +
                "','"+patient.getFamilyName()+"" +
                "','"+patient.getAge()+""+
                "','"+patient.getGender()+""+
                "','"+patient.getContact()+""+
                "','"+patient.getEmail()+""+
                "','"+patient.getPhoto()+""+
                "')");
        if(i>0){
            flag = true;
        }
        DBconn.closeConn();
        return flag;
    }

    @Override
    public List<Patient> getPatientAll() {
        List<Patient> list = new ArrayList<Patient>();
        try {
            DBconn.init();
            ResultSet rs = DBconn.selectSql("select * from patient");
            while(rs.next()){
                Patient patient = new Patient();
                patient.setId(rs.getInt("Patient_Id"));
                patient.setPassword(rs.getString("Password"));
                patient.setPatientName(rs.getString("PatientName"));
                patient.setFamilyName(rs.getString("FatherHusbandName"));
                patient.setAge(rs.getString("Age"));
                patient.setGender(rs.getString("Gender"));
                patient.setEmail(rs.getString("EmailID"));
                patient.setContact(rs.getString("Contact"));
                patient.setPhoto(rs.getString("Photograph"));
                list.add(patient);
            }
            DBconn.closeConn();
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean delete(int id) {
        return false;
    }

    @Override
    public boolean update(int id, String name, String familyname, String Age, String gender, String email, String contact, String photo) {
        boolean flag=false;
        DBconn.init();
        String sql="update patient set PatientName='"+name
                + "',Father/HusbandName'"+familyname
                +"',Age='"+Age
                +"',Gender='"+gender
                +"',EmailID='"+email
                +"',Contact='"+contact
                +"'Photograph'"+photo+"'where Patient_Id="+id;
        int i=DBconn.addUpdDel(sql);
        if(i>0){
            flag=true;
        }
        DBconn.closeConn();
        return flag;
    }
}
