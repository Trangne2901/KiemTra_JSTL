package com.example.kiemtra_jstl.Bai1;

public class Product {
    private String nameProduct;
    private double priceProduct;
    private String descriptionProduct;
    private String imageUrlProduct;

    public Product(String nameProduct, double priceProduct, String descriptionProduct, String imageUrlProduct) {
        this.nameProduct = nameProduct;
        this.priceProduct = priceProduct;
        this.descriptionProduct = descriptionProduct;
        this.imageUrlProduct = imageUrlProduct;
    }

    public String getNameProduct() {
        return nameProduct;
    }

    public void setNameProduct(String nameProduct) {
        this.nameProduct = nameProduct;
    }

    public double getPriceProduct() {
        return priceProduct;
    }

    public void setPriceProduct(double priceProduct) {
        this.priceProduct = priceProduct;
    }

    public String getDescriptionProduct() {
        return descriptionProduct;
    }

    public void setDescriptionProduct(String descriptionProduct) {
        this.descriptionProduct = descriptionProduct;
    }

    public String getImageUrlProduct() {
        return imageUrlProduct;
    }

    public void setImageUrlProduct(String imageUrlProduct) {
        this.imageUrlProduct = imageUrlProduct;
    }

    @Override
    public String toString() {
        return "Product{" +
                "nameProduct='" + nameProduct + '\'' +
                ", priceProduct=" + priceProduct +
                ", descriptionProduct='" + descriptionProduct + '\'' +
                ", imageUrlProduct='" + imageUrlProduct + '\'' +
                '}';
    }
}
