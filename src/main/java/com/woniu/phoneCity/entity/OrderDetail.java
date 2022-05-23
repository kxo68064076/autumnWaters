package com.woniu.phoneCity.entity;

import java.util.Objects;

public class OrderDetail {
    private int id;
    private Cart cart;
    private int orderId;
    private String gmtCreate;
    private String gmtModify;
    private String totalPrice;
    private int isDelete;

    public OrderDetail() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Cart getCart() {
        return cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
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

    public String getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(String totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(int isDelete) {
        this.isDelete = isDelete;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        OrderDetail that = (OrderDetail) o;
        return id == that.id && orderId == that.orderId && isDelete == that.isDelete && Objects.equals(cart, that.cart) && Objects.equals(gmtCreate, that.gmtCreate) && Objects.equals(gmtModify, that.gmtModify) && Objects.equals(totalPrice, that.totalPrice);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, cart, orderId, gmtCreate, gmtModify, totalPrice, isDelete);
    }

    @Override
    public String toString() {
        return "OrderDetail{" +
                "id=" + id +
                ", cart=" + cart +
                ", orderId=" + orderId +
                ", gmtCreate='" + gmtCreate + '\'' +
                ", gmtModify='" + gmtModify + '\'' +
                ", totalPrice='" + totalPrice + '\'' +
                ", isDelete=" + isDelete +
                '}';
    }
}
