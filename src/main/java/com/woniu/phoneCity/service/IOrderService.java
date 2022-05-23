package com.woniu.phoneCity.service;

import com.github.pagehelper.PageInfo;
import com.woniu.phoneCity.entity.Order;

import java.util.List;

public interface IOrderService {

    PageInfo<Order> findAllOrder(int nowPage, int pageSize);
}
