package com.jredu.ssm.controller;


import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.jredu.ssm.entity.User;
import com.jredu.ssm.services.UserServices;

@Controller
@RequestMapping("user")
public class UserController {
	@Resource
	UserServices userServices;
	@RequestMapping("/getUser.action")
	public ModelAndView getUser(){
		List<User> ul=userServices.getUser();
		ModelAndView mv=new ModelAndView();
		mv.setViewName("success");
		mv.addObject("userList",ul);
		System.out.println(ul.toString());
		return mv;
	}
	@RequestMapping("/check.action")
	public String checkUser(String name,String pwd){
		System.out.println("–’√˚:"+name);
		System.out.println("√‹¬Î:"+pwd);
		return "result";
	}
	@RequestMapping("/userInfo.action")
	public String userInfo(User user){
		userServices.insertUser(user);
		return "MyJsp";
	}
	@RequestMapping("/upload.action")
	public ModelAndView upload(HttpSession session,MultipartFile file){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("show");
		if(!file.isEmpty()){
			String path =session.getServletContext().getRealPath("upload");
			path +="/"+file.getOriginalFilename();
 			try {
				file.transferTo(new File(path));
			}  catch (Exception e) {
				e.printStackTrace();
			}
 			mv.addObject("imgUrl","upload/"+file.getOriginalFilename());
		}
		return mv;
	}
	
}






