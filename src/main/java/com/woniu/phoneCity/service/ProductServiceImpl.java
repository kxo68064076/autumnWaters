package com.woniu.phoneCity.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.woniu.phoneCity.entity.Product;
import com.woniu.phoneCity.mapper.ProductMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements IProductService {
    @Autowired
    ProductMapper productMapper;

    public PageInfo<Product> findAllProduct(int nowPage, int pageSize,Product product) {
        PageHelper.startPage(nowPage,pageSize);
        List<Product> allProduct = productMapper.selectAllProduct(product);
        return new PageInfo<Product>(allProduct);
    }

    public Product findProductByKey(int id) {
        return productMapper.selectProductById(id);
    }

    public int modify(Product product) {
        return productMapper.update(product);
    }

    public int del(int id) {
        return productMapper.delete(id);
    }

    public int addProduct(Product product) {
        return productMapper.insert(product);
    }


}
