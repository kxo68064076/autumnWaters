package com.woniu.phoneCity.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.woniu.phoneCity.entity.Order;
import com.woniu.phoneCity.mapper.OrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class OrderServiceImpl implements IOrderService{
    @Autowired
    OrderMapper orderMapper;

    public PageInfo<Order> findAllOrder(int nowPage, int pageSize) {
        PageHelper.startPage(nowPage, pageSize);
        List<Order> orders = orderMapper.selectAllOrder();
        return new PageInfo<Order>(orders);
    }
}
