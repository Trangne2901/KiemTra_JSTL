package com.example.kiemtra_jstl.Bai17;

public class Document {
    private String name;
    private String subject;
    private String lecturer;
    private String format;

    public Document(String name, String subject, String lecturer, String format) {
        this.name = name;
        this.subject = subject;
        this.lecturer = lecturer;
        this.format = format;
    }

    // Getters and Setters
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getLecturer() {
        return lecturer;
    }

    public void setLecturer(String lecturer) {
        this.lecturer = lecturer;
    }

    public String getFormat() {
        return format;
    }

    public void setFormat(String format) {
        this.format = format;
    }

    @Override
    public String toString() {
        return "Document{" +
                "name='" + name + '\'' +
                ", subject='" + subject + '\'' +
                ", lecturer='" + lecturer + '\'' +
                ", format='" + format + '\'' +
                '}';
    }
}
