package com.example.kiemtra_jstl.Bai11;

public class Attendance {
    private String employeeName;
    private String workDate;
    private int workHours;
    private String status;

    public Attendance(String employeeName, String workDate, int workHours, String status) {
        this.employeeName = employeeName;
        this.workDate = workDate;
        this.workHours = workHours;
        this.status = status;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String getWorkDate() {
        return workDate;
    }

    public void setWorkDate(String workDate) {
        this.workDate = workDate;
    }

    public int getWorkHours() {
        return workHours;
    }

    public void setWorkHours(int workHours) {
        this.workHours = workHours;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Attendance{" +
                "employeeName='" + employeeName + '\'' +
                ", workDate='" + workDate + '\'' +
                ", workHours=" + workHours +
                ", status='" + status + '\'' +
                '}';
    }
}
