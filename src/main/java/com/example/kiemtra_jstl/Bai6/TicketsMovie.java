package com.example.kiemtra_jstl.Bai6;

public class TicketsMovie {
    private String IdTicketsMovie;
    private String movieName;
    private String showTime;
    private double price;

    public TicketsMovie(String idTicketsMovie, String movieName, String showTime, double price) {
        IdTicketsMovie = idTicketsMovie;
        this.movieName = movieName;
        this.showTime = showTime;
        this.price = price;
    }

    public String getIdTicketsMovie() {
        return IdTicketsMovie;
    }

    public void setIdTicketsMovie(String idTicketsMovie) {
        IdTicketsMovie = idTicketsMovie;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getShowTime() {
        return showTime;
    }

    public void setShowTime(String showTime) {
        this.showTime = showTime;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "TicketsMovie{" +
                "IdTicketsMovie='" + IdTicketsMovie + '\'' +
                ", movieName='" + movieName + '\'' +
                ", showTime='" + showTime + '\'' +
                ", price=" + price +
                '}';
    }
}
