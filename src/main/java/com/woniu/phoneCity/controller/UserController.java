package com.woniu.phoneCity.controller;

import com.github.pagehelper.PageInfo;
import com.woniu.phoneCity.entity.User;
import com.woniu.phoneCity.mapper.UserMapper;
import com.woniu.phoneCity.service.IUserService;
import com.woniu.phoneCity.uitl.TimerUtil;
import org.apache.ibatis.annotations.Param;
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
@RequestMapping("User")
public class UserController {
    @Autowired
    IUserService userService;

    TimerUtil timerUtil;

    @RequestMapping("/userList")
    @ResponseBody
    public PageInfo<User> userList(int nowPage,int pageSize){
        PageInfo<User> allUser = userService.findAllUser(nowPage, pageSize);
        return allUser;
    }

    @RequestMapping("/findUserById/{id}")
    @ResponseBody
    public User findUserById(@PathVariable("id") int id){
        User user = userService.findUserBykey(id);
        return user;
    }

    @RequestMapping("/modifyUser")
    @ResponseBody
    public int findUserById(User user,@RequestParam("myImage") MultipartFile multipartFile) throws IOException {
        System.out.println(user);
        int id = user.getId();
        User myUser = userService.findUserBykey(id);
        timerUtil = new TimerUtil();
        myUser.setGmtModified(timerUtil.dateToString(new Date()));
        myUser.setPassword(user.getPassword());
        myUser.setUsername(user.getUsername());
        myUser.setRoot(user.getRoot());
        myUser.setEmail(user.getEmail());
        myUser.setGender(user.getGender());
        myUser.setTel(user.getTel());

        if (multipartFile.getSize() > 0){
            //获取上传文件的名字
            String filename = multipartFile.getOriginalFilename(); //324545435445.jpg
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
            multipartFile.transferTo(file);
            myUser.setThumbnail(filename); //数据库中保存  上传的文件的名字
        }

        int rows = userService.modifyUser(myUser);
        return rows;
    }
}
