package com.blog.service;

import com.blog.domain.User;

public interface UserService {
User login(String UName,String UPwd)  throws Exception;
int regist(User user) throws Exception;
}
