package com.woniu.phoneCity.service;

import com.github.pagehelper.PageInfo;
import com.woniu.phoneCity.entity.User;

public interface IUserService {

    User findUserByUsername(String username);

    PageInfo<User> findAllUser(int nowPage,int pageSize);

    User findUserBykey(int id);

    int modifyUser(User user);
}
