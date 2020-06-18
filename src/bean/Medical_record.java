package bean;

public class Medical_record {
    private int doctor;
    private int patient;
    private String suggestion;
    private int medicine_id;
    private String physical_examination;

    public int getDoctor() {
        return doctor;
    }

    public void setDoctor(int doctor) {
        this.doctor = doctor;
    }

    public int getPatient() {
        return patient;
    }

    public void setPatient(int patient) {
        this.patient = patient;
    }

    public String getSuggestion() {
        return suggestion;
    }

    public void setSuggestion(String suggestion) {
        this.suggestion = suggestion;
    }

    public int getMedicine_id() {
        return medicine_id;
    }

    public void setMedicine_id(int medicine_id) {
        this.medicine_id = medicine_id;
    }

    public String getPhysical_examination() {
        return physical_examination;
    }

    public void setPhysical_examination(String physical_examination) {
        this.physical_examination = physical_examination;
    }
}
