package com.example.kiemtra_jstl.Bai19;

public class Pets {
    private String name;
    private String species;
    private int age;
    private String owner;

    public Pets(String name, String species, int age, String owner) {
        this.name = name;
        this.species = species;
        this.age = age;
        this.owner = owner;
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSpecies() {
        return species;
    }

    public void setSpecies(String species) {
        this.species = species;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    @Override
    public String toString() {
        return "Pets{" +
                "name='" + name + '\'' +
                ", species='" + species + '\'' +
                ", age=" + age +
                ", owner='" + owner + '\'' +
                '}';
    }
}
