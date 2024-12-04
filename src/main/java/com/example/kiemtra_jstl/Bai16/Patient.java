package com.example.kiemtra_jstl.Bai16;

public class Patient {
    private String name;
    private int age;
    private String diagnosis;
    private String admissionDate;
    private String status;

    public Patient(String name, int age, String diagnosis, String admissionDate, String status) {
        this.name = name;
        this.age = age;
        this.diagnosis = diagnosis;
        this.admissionDate = admissionDate;
        this.status = status;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getDiagnosis() {
        return diagnosis;
    }

    public void setDiagnosis(String diagnosis) {
        this.diagnosis = diagnosis;
    }

    public String getAdmissionDate() {
        return admissionDate;
    }

    public void setAdmissionDate(String admissionDate) {
        this.admissionDate = admissionDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Patient{" +
                "name='" + name + '\'' +
                ", age=" + age +
                ", diagnosis='" + diagnosis + '\'' +
                ", admissionDate='" + admissionDate + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}