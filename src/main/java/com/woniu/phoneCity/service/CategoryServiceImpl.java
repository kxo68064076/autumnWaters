package com.woniu.phoneCity.service;

import com.woniu.phoneCity.entity.ProductCategory;
import com.woniu.phoneCity.mapper.CategoryMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CategoryServiceImpl implements ICategoryService{
    @Autowired
    CategoryMapper categoryMapper;

    public List<ProductCategory> findAllCategory() {
        return categoryMapper.selectAllCategory();
    }
}
