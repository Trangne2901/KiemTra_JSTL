package com.example.kiemtra_jstl.Bai15;

public class EmployeeLeaveApplication {
    private String employeeName;
    private String startDate;
    private String endDate;
    private String status;

    public EmployeeLeaveApplication(String employeeName, String startDate, String endDate, String status) {
        this.employeeName = employeeName;
        this.startDate = startDate;
        this.endDate = endDate;
        this.status = status;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "EmployeeLeaveApplication{" +
                "employeeName='" + employeeName + '\'' +
                ", startDate='" + startDate + '\'' +
                ", endDate='" + endDate + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
