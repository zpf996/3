package dao.imp;
import bean.Admin;
import dao.AdminDao;
import util.DBconn;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AdminDaoImp implements AdminDao{
    @Override
    public boolean login(String name, String password) {
        boolean flag=false;
        try{
            DBconn.init();
            ResultSet rs=DBconn.selectSql("select * from admin where Username='"+name+"'and Password='"+password+"'");
            while(rs.next()){
                if(rs.getString("Username").equals(name)&&rs.getString("Password").equals(password)){
                    flag=true;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public List<Admin> getAdminAll() {
        return null;
    }
}
