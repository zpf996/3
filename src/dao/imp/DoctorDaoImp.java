package dao.imp;
import util.DBconn;
import bean.Doctor;
import dao.DoctorDao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
public class DoctorDaoImp implements DoctorDao {
    @Override
    public boolean login(String name,String password) {
        boolean flag=false;
        try{
            DBconn.init();
            ResultSet rs=DBconn.selectSql("select from doctor where Doctor Name='"+name+"'and password='"+password+"'");
            while(rs.next()){
                if(rs.getString("Doctor Name").equals(name)&&
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
    public List<Doctor> getAdminAll() {
        List<Doctor> list = new ArrayList<Doctor>();
        try {
            DBconn.init();
            ResultSet rs = DBconn.selectSql("select * from doctor");
            while(rs.next()){
                Doctor doctor = new Doctor();
                doctor.setId(rs.getString("id"));
                doctor.setDoctorName(rs.getString("Doctor Name"));
                doctor.setQualification(rs.getString("Qualification"));
                doctor.setSpecialization(rs.getString("Specialization"));
                doctor.setExperience(rs.getString("Experience"));
                doctor.setEmail(rs.getString("Email ID"));
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
        boolean flag = false;
        DBconn.init();
        int i =DBconn.addUpdDel("insert into doctor(id,Doctor Name,Qualification,Specialization,Experience,Contact,Email Id,password) " +
                "values('"+doctor.getId()+"" +
                "','"+doctor.getDoctorName()+"" +
                "','"+doctor.getQualification()+"" +
                "','"+doctor.getSpecialization()+"" +
                "','"+doctor.getExperience()+""+
                "','"+doctor.getEmail()+""+
                "','"+doctor.getPassword()+""+
                "')");
        if(i>0){
            flag = true;
        }
        DBconn.closeConn();
        return flag;
    }

    @Override
    public boolean delete(char id) {
        boolean flag = false;
        DBconn.init();
        String sql = "delete  from doctor where Medicine_ID="+id;
        int i =DBconn.addUpdDel(sql);
        if(i>0){
            flag = true;
        }
        DBconn.closeConn();
        return flag;


    }

    @Override
    public boolean update(String id,String name,String qualificication,String speciallization,String experience,String contact,String email,String password) {
       boolean flag=false;
       DBconn.init();
       String sql="update doctor set name='"+name
               + "',Qualificat'"+qualificication
               +"',Specialization='"+speciallization
               +"',Experience='"+experience
               +"',Contact='"+contact
               +"',Email ID='"+email
               +"'password'"+"'where id="+id;
       int i=DBconn.addUpdDel(sql);
       if(i>0){
           flag=true;
       }
        DBconn.closeConn();
       return flag;
    }

}
