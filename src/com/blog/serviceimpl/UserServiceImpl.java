package com.blog.serviceimpl;

import org.apache.ibatis.session.SqlSession;

import com.blog.dao.UserDao;
import com.blog.domain.User;
import com.blog.service.UserService;
import com.blog.util.MapperConfig;

public class UserServiceImpl  implements UserService{
private SqlSession session;
public UserServiceImpl() {
	session=MapperConfig.getSession();
}
public User login(String uname,String upwd) {
	if(uname==null||upwd==null||uname.trim().equals("")||upwd.trim().equals("")) {
		return null ;
	}else
	{
		User user=session.getMapper(UserDao.class).login(uname, upwd);
		session.commit();
		session.close();
		return user;
	}
}
public int regist(User user) throws Exception {
	if(user.getUGender()==null||user.getUName()==null||user.getUPwd()==null) {
		return 0;
	}else {
		int i=session.getMapper(UserDao.class).save(user);
		session.commit();
		session.close();
		return i;
	}	
}
}
