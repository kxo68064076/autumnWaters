package com.woniu.phoneCity.mapper;

import com.woniu.phoneCity.entity.Product;

import java.util.List;

public interface ProductMapper {
    List<Product> selectAllProduct(Product product);

    Product selectProductById(int id);

    int update(Product product);

    int delete(int id);

    int insert(Product product);
}
