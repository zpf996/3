package dao.imp;
import util.DBconn;
import bean.Doctor;
import dao.DoctorDao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
public class DoctorDaoImp implements DoctorDao {
    @Override
    public boolean login(String name,String password) {
        boolean flag=false;
        try{
            DBconn.init();
            ResultSet rs=DBconn.selectSql("select * from doctor where DoctorName='"+name+"'and password='"+password+"'");
            while(rs.next()){
                if(rs.getString("DoctorName").equals(name)&&
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
    public List<Doctor> getDoctorAll() {
        List<Doctor> list = new ArrayList<Doctor>();
        try {
            DBconn.init();
            ResultSet rs = DBconn.selectSql("select * from doctor");
            while(rs.next()){
                Doctor doctor = new Doctor();
                doctor.setId(rs.getInt("id"));
                doctor.setDoctorName(rs.getString("DoctorName"));
                doctor.setQualification(rs.getString("Qualification"));
                doctor.setSpecialization(rs.getString("Specialization"));
                doctor.setExperience(rs.getString("Experience"));
                doctor.setContact(rs.getString("Contact"));
                doctor.setEmail(rs.getString("Email_ID"));
                doctor.setPassword(rs.getString("password"));
                list.add(doctor);
            }
            DBconn.closeConn();
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;

    }

    @Override
    public boolean register(Doctor doctor) {
        System.out.println("1111111111");
        boolean flag = false;
        DBconn.init();
        int i =DBconn.addUpdDel("insert into doctor (id,DoctorName,Qualification,Specialization,Experience,Contact,Email_Id,password) "+
                "values('"+doctor.getId()+"" +
                "','"+doctor.getDoctorName()+"" +
                "','"+doctor.getQualification()+"" +
                "','"+doctor.getSpecialization()+"" +
                "','"+doctor.getExperience()+""+
                "','"+doctor.getContact()+""+
                "','"+doctor.getEmail()+""+
                "','"+doctor.getPassword()+""+
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
    public boolean delete(int id) {
        boolean flag = false;
        DBconn.init();
        String sql = "delete  from doctor where id="+id;
        int i =DBconn.addUpdDel(sql);
        if(i>0){
            flag = true;
        }
        DBconn.closeConn();
        return flag;


    }

    @Override
    public boolean view(int id, String name, String qualificication, String speciallization, String experience, String contact, String email, String password) {
        boolean flag=false;
        DBconn.init();
        String sql="select * doctor set Doctorname='"+name
                + "',Qualificat'"+qualificication
                +"',Specialization='"+speciallization
                +"',Experience='"+experience
                +"',Contact='"+contact
                +"',Email_ID='"+email
                +"'password'"+"'where id="+id;
        int i=DBconn.addUpdDel(sql);
        if(i>0){
            flag=true;
        }
        DBconn.closeConn();
        return flag;
    }

    @Override
    public boolean update(int id,String name,String qualificication,String speciallization,String experience,String contact,String email) {
       boolean flag=false;
       DBconn.init();
       String sql="update doctor set Doctorname='"+name
               + "',Qualification='"+qualificication
               +"',Specialization='"+speciallization
               +"',Experience='"+experience
               +"',Contact='"+contact
               +"',Email_ID='"+email
               +"'where id="+id;
       int i=DBconn.addUpdDel(sql);
       if(i>0){
           flag=true;
       }
        DBconn.closeConn();
       return flag;
    }
}
