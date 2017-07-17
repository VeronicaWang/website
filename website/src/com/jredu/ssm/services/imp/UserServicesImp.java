package com.jredu.ssm.services.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jredu.ssm.dao.UserDao;
import com.jredu.ssm.entity.User;
import com.jredu.ssm.services.UserServices;
@Service
public class UserServicesImp implements UserServices{
	@Resource
	UserDao userDao;
	@Override
	public List<User> getUser() {
		// TODO Auto-generated method stub
		return userDao.getUserList();
	}
	@Override
	public void insertUser(User user) {
		// TODO Auto-generated method stub
		 userDao.insertUser(user);
	}

}



