package com.woniu.phoneCity.mapper;

import com.woniu.phoneCity.entity.User;

import java.util.List;

public interface UserMapper {
    User selectUserByUsername(String username);

    List<User> selectAllUser();

    User selectUserById(int id);

    int updateUser(User user);
}
