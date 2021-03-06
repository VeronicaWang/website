package com.jredu.ssm.entity;

import org.springframework.stereotype.Component;

@Component
public class User {
	private int id;
	private String userName;
	private String userPwd;
	private int age;
	private char sex;
	public User(){}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public char getSex() {
		return sex;
	}
	public void setSex(char sex) {
		this.sex = sex;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", userName=" + userName + ", userPwd="
				+ userPwd + ", age=" + age + ", sex=" + sex + "]";
	}
	
}
