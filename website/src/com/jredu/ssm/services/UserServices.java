package com.jredu.ssm.services;

import java.util.List;

import com.jredu.ssm.entity.User;

public interface UserServices {
	public List<User> getUser();
	public void insertUser(User user);
}
