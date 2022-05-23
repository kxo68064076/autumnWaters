package com.woniu.phoneCity.controller;

import com.woniu.phoneCity.entity.User;
import com.woniu.phoneCity.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
@RequestMapping("server")
public class ManagerController {

    @Autowired
    IUserService userService;

    @RequestMapping("/login")
    public String login(String username, String password, HttpSession session, Map map){
        User user = userService.findUserByUsername(username);
        if (user==null){
            map.put("errorInfo","账户不存在！");
        }else {
            if (password.equals(user.getPassword())){
                map.put("userInfo",user);
                session.setAttribute("userInfo",user);
                return "redirect:mainServer";
            }else {
                map.put("errorInfo","密码不正确");
            }
        }
        return "back-login";
    }
}
