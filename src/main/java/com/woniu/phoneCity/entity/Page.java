package com.woniu.phoneCity.entity;

import java.util.List;

public class Page<T> {
    private int currentPage; //当前页
    private int pageSize;   //单页条数
    private List<T> queryData;
    private int total;

    public Page(int currentPage, int pageSize) {
        this.currentPage = currentPage;
        this.pageSize = pageSize;
    }

    //获取总页数
    public int getTotalPage(){
        return (total+pageSize-1)/pageSize;
    }

    //上一页
    public int getPrePage(){
        if (currentPage>1){
            return currentPage-1;
        }
        return 1;
    }

    //下一页
    public int getNextPage(){
        if (currentPage<getTotalPage()){
            return currentPage+1;
        }
        return currentPage;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public List<T> getQueryData() {
        return queryData;
    }

    public void setQueryData(List<T> queryData) {
        this.queryData = queryData;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public Page(int currentPage, int pageSize, List<T> queryData, int total) {
        this.currentPage = currentPage;
        this.pageSize = pageSize;
        this.queryData = queryData;
        this.total = total;
    }
}
