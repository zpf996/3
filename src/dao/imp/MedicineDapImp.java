package dao.imp;

import bean.Medicine;
import dao.MedicineDao;

import java.util.List;

public class MedicineDapImp implements MedicineDao {
    @Override
    public boolean login(String doctor, String patient) {
        return false;
    }

    @Override
    public boolean register(int id, String name, String type, String dosage, String quantity, String price) {
        return false;
    }

    @Override
    public List<Medicine> getMedicineAll() {
        return null;
    }

    @Override
    public boolean delete(String id) {
        return false;
    }

    @Override
    public boolean update(int id, String name, String type, String dosage, String quantity, String price) {
        return false;
    }
}
