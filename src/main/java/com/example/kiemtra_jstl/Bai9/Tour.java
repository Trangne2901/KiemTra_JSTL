package com.example.kiemtra_jstl.Bai9;

public class Tour {
    private String tourName;
    private String location;
    private String departureDate;
    private double price;
    private String status;

    public Tour(String tourName, String location, String departureDate, double price, String status) {
        this.tourName = tourName;
        this.location = location;
        this.departureDate = departureDate;
        this.price = price;
        this.status = status;
    }

    public String getTourName() {
        return tourName;
    }

    public void setTourName(String tourName) {
        this.tourName = tourName;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getDepartureDate() {
        return departureDate;
    }

    public void setDepartureDate(String departureDate) {
        this.departureDate = departureDate;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Tour{" +
                "tourName='" + tourName + '\'' +
                ", location='" + location + '\'' +
                ", departureDate='" + departureDate + '\'' +
                ", price=" + price +
                ", status='" + status + '\'' +
                '}';
    }
}
