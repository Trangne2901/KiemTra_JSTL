package com.example.kiemtra_jstl.Bai10;

public class Course {
    private String nameCourse;
    private String instructor;
    private int hours;
    private double price;

    public Course(String nameCourse, String instructor, int hours, double price) {
        this.nameCourse = nameCourse;
        this.instructor = instructor;
        this.hours = hours;
        this.price = price;
    }

    public String getNameCourse() {
        return nameCourse;
    }

    public void setNameCourse(String nameCourse) {
        this.nameCourse = nameCourse;
    }

    public String getInstructor() {
        return instructor;
    }

    public void setInstructor(String instructor) {
        this.instructor = instructor;
    }

    public int getHours() {
        return hours;
    }

    public void setHours(int hours) {
        this.hours = hours;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Course{" +
                "nameCourse='" + nameCourse + '\'' +
                ", instructor='" + instructor + '\'' +
                ", hours=" + hours +
                ", price=" + price +
                '}';
    }
}
