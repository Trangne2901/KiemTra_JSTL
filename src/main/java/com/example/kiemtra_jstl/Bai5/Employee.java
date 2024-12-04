package com.example.kiemtra_jstl.Bai5;

public class Employee {
    private String nameEmp;
    private String department;
    private String position;
    private double salary;
    private String status;

    public Employee(String nameEmp, String department, String position, double salary, String status) {
        this.nameEmp = nameEmp;
        this.department = department;
        this.position = position;
        this.salary = salary;
        this.status = status;
    }

    public String getNameEmp() {
        return nameEmp;
    }

    public void setNameEmp(String nameEmp) {
        this.nameEmp = nameEmp;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "nameEmp='" + nameEmp + '\'' +
                ", department='" + department + '\'' +
                ", position='" + position + '\'' +
                ", salary=" + salary +
                ", status='" + status + '\'' +
                '}';
    }
}
