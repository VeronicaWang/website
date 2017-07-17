package com.jredu.ssm.dao;

import java.util.List;
import com.jredu.ssm.entity.User;

public interface UserDao {
	public List<User> getUserList();
	public void insertUser(User user);
}
