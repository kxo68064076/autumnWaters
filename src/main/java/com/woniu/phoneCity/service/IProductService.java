package com.woniu.phoneCity.service;

import com.github.pagehelper.PageInfo;
import com.woniu.phoneCity.entity.Product;

public interface IProductService {
    PageInfo<Product> findAllProduct(int nowPage,int pageSize,Product product);

    Product findProductByKey(int id);

    int modify(Product product);

    int del(int id);

    int addProduct(Product product);
}
