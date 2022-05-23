package com.woniu.phoneCity.controller;

import com.github.pagehelper.PageInfo;
import com.woniu.phoneCity.entity.Product;
import com.woniu.phoneCity.entity.ProductCategory;
import com.woniu.phoneCity.service.ProductServiceImpl;
import org.apache.ibatis.annotations.AutomapConstructor;
import com.woniu.phoneCity.uitl.TimerUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.UUID;

@Controller
@RequestMapping("Product")
public class ProductController {
    @Autowired
    ProductServiceImpl productService;
    TimerUtil timerUtil;

    @RequestMapping("/productlist")
    @ResponseBody
    public PageInfo<Product> productlist(int nowPage,int pageSize,String price,String productName,String productTypeId){
        ProductCategory category = null;
        if (productTypeId!=null&&!productTypeId.isEmpty()){
            category = new ProductCategory();
            category.setId(Integer.valueOf(productTypeId));
        }
        Product product = new Product();
        product.setProductName(productName);
        product.setPrice(price);
        product.setCategory(category);
        PageInfo<Product> allProduct = productService.findAllProduct(nowPage, pageSize,product);
        return allProduct;
    }

    @RequestMapping("/findProductById/{id}")
    @ResponseBody
    public Product findProductById(@PathVariable("id") int id){
        Product product = productService.findProductByKey(id);
        return product;
    }

    @RequestMapping("/proModify")
    @ResponseBody
    public int modify(Product product, @RequestParam("myImage") MultipartFile thumbnail) throws IOException {
        System.out.println(product);
        int id = product.getId();
        Product myProduct = productService.findProductByKey(id);
        myProduct.setProductName(product.getProductName());
        myProduct.getCategory().setId(product.getCategory().getId());
        myProduct.setPrice(product.getPrice());
        myProduct.setPublish(product.getPublish());
        myProduct.setProductStoreCount(product.getProductStoreCount());
        myProduct.setProductSaleCount(product.getProductSaleCount());
        myProduct.setProductStatus(product.getProductStatus());
        myProduct.setGmtCreate(product.getGmtCreate());
        timerUtil = new TimerUtil();
        myProduct.setGmtModified(timerUtil.dateToString(new Date()));

        if (thumbnail.getSize() > 0){
            //获取上传文件的名字
            String filename = thumbnail.getOriginalFilename(); //324545435445.jpg
            //更改文件的名字
            String uuid = UUID.randomUUID().toString().replace("-","");
            filename = uuid + filename.substring(filename.lastIndexOf("."));

            //获取上传的路径
            String path =  "D:/JavaProjects/nginx-1.21.6/html";     //request.getServletContext().getRealPath("/imgs");
            File f = new File(path);
            if (!f.exists()){ //判断文件夹是否存在 不存在 就创建一个
                f.mkdir();
            }

            File file = new File(f+File.separator+filename);
            System.out.println(file.getAbsolutePath());
            //上传
            thumbnail.transferTo(file);
            myProduct.setThumbnail(filename); //数据库中保存  上传的文件的名字
        }

        int rows = productService.modify(myProduct);

        return  rows ;
    }

    @RequestMapping("del/{id}")
    @ResponseBody
    public int del(@PathVariable("id") int id){
        int rows = productService.del(id);
        return rows;
    }

    @RequestMapping("/addProduct")
    @ResponseBody
    public int addProduct(Product product, @RequestParam("myImage") MultipartFile thumbnail) throws IOException {
        System.out.println(product);
        if (thumbnail.getSize() > 0){
            //获取上传文件的名字
            String filename = thumbnail.getOriginalFilename(); //324545435445.jpg
            //更改文件的名字
            String uuid = UUID.randomUUID().toString().replace("-","");
            filename = uuid + filename.substring(filename.lastIndexOf("."));

            //获取上传的路径
            String path =  "D:/JavaProjects/nginx-1.21.6/html";     //request.getServletContext().getRealPath("/imgs");
            File f = new File(path);
            if (!f.exists()){ //判断文件夹是否存在 不存在 就创建一个
                f.mkdir();
            }

            File file = new File(f+File.separator+filename);
            System.out.println(file.getAbsolutePath());
            //上传
            thumbnail.transferTo(file);
            product.setThumbnail(filename); //数据库中保存  上传的文件的名字
        }
        int i = productService.addProduct(product);
        return  i ;
    }

}
