package com.example.kiemtra_jstl.Bai12;

public class Event {
    private String name;
    private String datetime;
    private String location;
    private int participants;

    public Event(String name, String datetime, String location, int participants) {
        this.name = name;
        this.datetime = datetime;
        this.location = location;
        this.participants = participants;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDatetime() {
        return datetime;
    }

    public void setDatetime(String datetime) {
        this.datetime = datetime;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public int getParticipants() {
        return participants;
    }

    public void setParticipants(int participants) {
        this.participants = participants;
    }

    @Override
    public String toString() {
        return "Event{" +
                "name='" + name + '\'' +
                ", datetime='" + datetime + '\'' +
                ", location='" + location + '\'' +
                ", participants=" + participants +
                '}';
    }
}
