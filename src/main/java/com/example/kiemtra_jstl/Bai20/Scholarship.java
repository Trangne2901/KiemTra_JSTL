package com.example.kiemtra_jstl.Bai20;

public class Scholarship {
    private String name;
    private String criteria;
    private double value;
    private String deadline;

    public Scholarship(String name, String criteria, double value, String deadline) {
        this.name = name;
        this.criteria = criteria;
        this.value = value;
        this.deadline = deadline;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCriteria() {
        return criteria;
    }

    public void setCriteria(String criteria) {
        this.criteria = criteria;
    }

    public double getValue() {
        return value;
    }

    public void setValue(double value) {
        this.value = value;
    }

    public String getDeadline() {
        return deadline;
    }

    public void setDeadline(String deadline) {
        this.deadline = deadline;
    }

    @Override
    public String toString() {
        return "Scholarship{" +
                "name='" + name + '\'' +
                ", criteria='" + criteria + '\'' +
                ", value=" + value +
                ", deadline='" + deadline + '\'' +
                '}';
    }
}
