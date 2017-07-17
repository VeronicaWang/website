package com.jredu.ssm.controller;
import java.io.File;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.jredu.ssm.entity.ImgInfo;
import com.jredu.ssm.services.ImgInfoServices;
@Controller
@RequestMapping("img/")
public class ImgInfoController {
	@Resource
	ImgInfoServices imgInfoServices;
	@Resource
	ImgInfo imaginfo;
	
	@RequestMapping("getImgs.action")
	public ModelAndView getImgList(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		List<ImgInfo> list = imgInfoServices.getImgList();
		mv.addObject("imgList",list);
		return mv;
	}
	@RequestMapping("getImgs1.action")
	public ModelAndView getImgList1(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin");
		List<ImgInfo> list = imgInfoServices.getImgList();
		mv.addObject("imgList",list);
		return mv;
	}
	@RequestMapping("upload.action")
	public String uploadImg(HttpSession session,MultipartFile file,int id,String imgDesc){
		System.out.println("====="+id);
		if(!file.isEmpty()){
			String path =session.getServletContext().getRealPath("upload");
			path +="/"+file.getOriginalFilename();
 			try {
				file.transferTo(new File(path));
			}  catch (Exception e) {
				e.printStackTrace();
			}
 			imaginfo.setId(id);
 			imaginfo.setImgDesc(imgDesc);
 			imaginfo.setImgUrl("upload/"+file.getOriginalFilename());
 			imgInfoServices.updateImg(imaginfo);
		}
		return "redirect:/img/getImgs1.action";
	}
}
