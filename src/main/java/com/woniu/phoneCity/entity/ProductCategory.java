package com.woniu.phoneCity.entity;

import java.util.Date;
import java.util.Objects;

public class ProductCategory {
    private  Integer id;
    private String typename;
    private Date gmtCreate;
    private  Date gmtModified;
    private Boolean isDelete;

    public ProductCategory() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTypename() {
        return typename;
    }

    public void setTypename(String typename) {
        this.typename = typename;
    }

    public Date getGmtCreate() {
        return gmtCreate;
    }

    public void setGmtCreate(Date gmtCreate) {
        this.gmtCreate = gmtCreate;
    }

    public Date getGmtModified() {
        return gmtModified;
    }

    public void setGmtModified(Date gmtModified) {
        this.gmtModified = gmtModified;
    }

    public Boolean getDelete() {
        return isDelete;
    }

    public void setDelete(Boolean delete) {
        isDelete = delete;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ProductCategory that = (ProductCategory) o;
        return Objects.equals(id, that.id) && Objects.equals(typename, that.typename) && Objects.equals(gmtCreate, that.gmtCreate) && Objects.equals(gmtModified, that.gmtModified) && Objects.equals(isDelete, that.isDelete);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, typename, gmtCreate, gmtModified, isDelete);
    }

    @Override
    public String toString() {
        return "ProductCategory{" +
                "id=" + id +
                ", typename='" + typename + '\'' +
                ", gmtCreate=" + gmtCreate +
                ", gmtModified=" + gmtModified +
                ", isDelete=" + isDelete +
                '}';
    }

    public ProductCategory(Integer id, String typename, Date gmtCreate, Date gmtModified, Boolean isDelete) {
        this.id = id;
        this.typename = typename;
        this.gmtCreate = gmtCreate;
        this.gmtModified = gmtModified;
        this.isDelete = isDelete;
    }

    public ProductCategory(Integer id) {
        this.id = id;
    }

    public ProductCategory(String typename) {
        this.typename = typename;
    }

    public ProductCategory(Integer id, String typename) {
        this.id = id;
        this.typename = typename;
    }
}
