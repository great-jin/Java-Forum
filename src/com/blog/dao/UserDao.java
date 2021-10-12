package com.blog.dao;
import org.apache.ibatis.annotations.Param;
import com.blog.domain.User;
public interface UserDao {
	int update(User user) throws Exception;
	int save(User user) throws Exception;
	User login(@Param("UName") String UName, @Param("UPwd") String UPwd);
}
