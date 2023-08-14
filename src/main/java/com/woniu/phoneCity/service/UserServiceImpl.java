package com.woniu.phoneCity.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.woniu.phoneCity.entity.User;
import com.woniu.phoneCity.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements IUserService{
    @Autowired
    UserMapper userMapper;

    public User findUserByUsername(String username) {
        return userMapper.selectUserByUsername(username);
    }

    public PageInfo<User> findAllUser(int nowPage, int pageSize) {
        PageHelper.startPage(nowPage,pageSize);
        List<User> users = userMapper.selectAllUser();
        return new PageInfo<User>(users);
    }

    public User findUserBykey(int id) {
        return userMapper.selectUserById(id);
    }

    public int modifyUser(User user) {
        return userMapper.updateUser(user);
    }

}
