package com.woniu.phoneCity.entity;

import java.util.Objects;

public class Address {
    private int id;
    private String detailAddress;
    private String receiver;
    private String tel;
    private int userId;
    private int isDefault;
    private int status;
    private String gmtCreate;
    private String gmtModified;
    private int isDelete;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDetailAddress() {
        return detailAddress;
    }

    public void setDetailAddress(String detailAddress) {
        this.detailAddress = detailAddress;
    }

    public String getReceiver() {
        return receiver;
    }

    public void setReceiver(String receiver) {
        this.receiver = receiver;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getIsDefault() {
        return isDefault;
    }

    public void setIsDefault(int isDefault) {
        this.isDefault = isDefault;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getGmtCreate() {
        return gmtCreate;
    }

    public void setGmtCreate(String gmtCreate) {
        this.gmtCreate = gmtCreate;
    }

    public String getGmtModified() {
        return gmtModified;
    }

    public void setGmtModified(String gmtModified) {
        this.gmtModified = gmtModified;
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
        Address address = (Address) o;
        return id == address.id && userId == address.userId && isDefault == address.isDefault && status == address.status && isDelete == address.isDelete && Objects.equals(detailAddress, address.detailAddress) && Objects.equals(receiver, address.receiver) && Objects.equals(tel, address.tel) && Objects.equals(gmtCreate, address.gmtCreate) && Objects.equals(gmtModified, address.gmtModified);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, detailAddress, receiver, tel, userId, isDefault, status, gmtCreate, gmtModified, isDelete);
    }

    @Override
    public String toString() {
        return "Address{" +
                "id=" + id +
                ", detailAddress='" + detailAddress + '\'' +
                ", receiver='" + receiver + '\'' +
                ", tel='" + tel + '\'' +
                ", userId=" + userId +
                ", isDefault=" + isDefault +
                ", status=" + status +
                ", gmtCreate='" + gmtCreate + '\'' +
                ", gmtModified='" + gmtModified + '\'' +
                ", isDelete=" + isDelete +
                '}';
    }

    public Address() {
    }
}
