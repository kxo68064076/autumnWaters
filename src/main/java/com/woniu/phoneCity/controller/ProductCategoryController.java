package com.woniu.phoneCity.controller;

import com.woniu.phoneCity.entity.ProductCategory;
import com.woniu.phoneCity.service.CategoryServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("category")
public class ProductCategoryController {
    @Autowired
    CategoryServiceImpl categoryService;

    @RequestMapping("productCategoryList")
    @ResponseBody
    public List<ProductCategory> productCategoryList(){
        List<ProductCategory> categoryList = categoryService.findAllCategory();
        return categoryList;
    }
}
