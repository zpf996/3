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
                ResultSet rs=DBconn.selectSql("select from patient where Doctor Name='"+name+"'and password='"+password+"'");
                while(rs.next()){
                    if(rs.getString("Patient Name").equals(name)&&
                            rs.getString("password").equals(password)){
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
        int i =DBconn.addUpdDel("insert into patient(Patient_Id,Password,Patient Name,Father / Husband Name,Age,Gender,Contact,Photograph) " +
                "values('"+patient.getId()+"" +
                "','"+patient.getPassword()+"" +
                "','"+patient.getPatientName()+"" +
                "','"+patient.getFamilyName()+"" +
                "','"+patient.getAge()+""+
                "','"+patient.getGender()+""+
                "','"+patient.getContact()+""+
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
                patient.setId(rs.getString("Patient_Id"));
                patient.setPassword(rs.getString("Password"));
                patient.setPatientName(rs.getString("Patient Name"));
                patient.setFamilyName(rs.getString("Father / Husband Name"));
                patient.setAge(rs.getString("Age"));
                patient.setGender(rs.getString("Gender"));
                patient.setEmail(rs.getString("Email ID"));
                patient.setContact(rs.getString("Contact"));
                patient.setPhoto(rs.getBytes("Photograph"));
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
    public boolean update(String id, String name, String familyname, String Age, String gender, String email, String contact, byte[] photo) {
        boolean flag=false;
        DBconn.init();
        String sql="update patient set Patient Name='"+name
                + "',Father / Husband Name'"+familyname
                +"',Age='"+Age
                +"',Gender='"+gender
                +"',Email ID='"+email
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
