package com.woniu.phoneCity.mapper;

import com.woniu.phoneCity.entity.ProductCategory;

import java.util.List;

public interface CategoryMapper {
    List<ProductCategory> selectAllCategory();
}
