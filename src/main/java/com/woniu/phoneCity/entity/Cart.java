package com.woniu.phoneCity.entity;

import java.util.Objects;

public class Cart {
    private int id;
    private int userId;
    private int count;
    private Product product;
    private String gmtCreate;
    private String gmtModify;

    public Cart() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getGmtCreate() {
        return gmtCreate;
    }

    public void setGmtCreate(String gmtCreate) {
        this.gmtCreate = gmtCreate;
    }

    public String getGmtModify() {
        return gmtModify;
    }

    public void setGmtModify(String gmtModify) {
        this.gmtModify = gmtModify;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Cart cart = (Cart) o;
        return id == cart.id && userId == cart.userId  && count == cart.count && Objects.equals(gmtCreate, cart.gmtCreate) && Objects.equals(gmtModify, cart.gmtModify) && Objects.equals(product, cart.product);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, userId, gmtCreate, gmtModify, count, product);
    }

    @Override
    public String toString() {
        return "Cart{" +
                "id=" + id +
                ", userId=" + userId +
                ", gmtCreate='" + gmtCreate + '\'' +
                ", gmtModify='" + gmtModify + '\'' +
                ", count=" + count +
                ", product=" + product +
                '}';
    }
}
