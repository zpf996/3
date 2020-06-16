package dao;
import bean.Admin;
import java.util.List;
public interface AdminDao {
    public boolean login(String name,String password);//login
    public List<Admin> getAdminAll();//Return to Admin information collection
}
