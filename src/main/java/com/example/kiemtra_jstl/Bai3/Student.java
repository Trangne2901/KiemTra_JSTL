package com.example.kiemtra_jstl.Bai3;

public class Student {
    private String nameStudent;
    private String IdStudent;
    private double agvStudent;
    private String status;

    public Student(String nameStudent, String idStudent, double agvStudent, String status) {
        this.nameStudent = nameStudent;
        IdStudent = idStudent;
        this.agvStudent = agvStudent;
        this.status = status;
    }

    public String getNameStudent() {
        return nameStudent;
    }

    public void setNameStudent(String nameStudent) {
        this.nameStudent = nameStudent;
    }

    public String getIdStudent() {
        return IdStudent;
    }

    public void setIdStudent(String idStudent) {
        IdStudent = idStudent;
    }

    public double getAgvStudent() {
        return agvStudent;
    }

    public void setAgvStudent(double agvStudent) {
        this.agvStudent = agvStudent;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Student{" +
                "nameStudent='" + nameStudent + '\'' +
                ", IdStudent='" + IdStudent + '\'' +
                ", agvStudent=" + agvStudent +
                ", status='" + status + '\'' +
                '}';
    }
}
