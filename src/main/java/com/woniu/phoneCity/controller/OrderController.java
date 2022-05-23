package com.woniu.phoneCity.controller;

import com.github.pagehelper.PageInfo;
import com.woniu.phoneCity.entity.Order;
import com.woniu.phoneCity.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("order")
public class OrderController {
    @Autowired
    IOrderService orderService;

    @RequestMapping("orderList")
    @ResponseBody
    public PageInfo<Order> orderList(int nowPage,int pageSize){
        PageInfo<Order> pageInfo = orderService.findAllOrder(nowPage, pageSize);
        for (Order order:pageInfo.getList()){
            System.out.println(order);
        }
        return pageInfo;
    }
}
