package com.woniu.phoneCity.entity;

import lombok.EqualsAndHashCode;

@EqualsAndHashCode
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
