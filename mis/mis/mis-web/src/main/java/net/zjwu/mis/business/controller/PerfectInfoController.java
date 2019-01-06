package net.zjwu.mis.business.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import net.zjwu.mis.system.model.User;
import net.zjwu.mis.system.service.UserService;
import net.zjwu.mis.utils.PropertyUtil;
import net.zjwu.mis.utils.SpringUtil;

@Controller
@RequestMapping("/perfectInfo")
public class PerfectInfoController {
    @Autowired
    private UserService userService;
	
	@RequestMapping("/render")
	public String userInfoRender(Model model){
		User user =SpringUtil.getCurrentUser();
		model.addAttribute("user", user);
		return "desk/perfectInfo";
	}
	
	@RequestMapping("/addInfo")
	public String addInfo(User user,@RequestParam MultipartFile imgfile,HttpServletRequest request,Model model) throws IllegalStateException, IOException{
		String uid = user.getUid();
       	String message="";
		
		String originalFilename = imgfile.getOriginalFilename();
		if(imgfile!=null && originalFilename!=null && originalFilename.length()>0){
			//得到保存路径
			String savepath = PropertyUtil.getProperty("book.uplod.url");
 			//得到新的图片名称
 			String filename = UUID.randomUUID()+originalFilename.substring(originalFilename.lastIndexOf("."));
 			String picUrl = "user"+File.separator+filename;
 			File newfile = new File(savepath+picUrl);
			//将图片存到硬盘里
			imgfile.transferTo(newfile);
			//将图片名称存到数据库
			user.setPicUrl(picUrl);
			
		}
		
		int info = userService.updateByself(user);
		if(info==1){
		   message = "完善个人信息成功！";	
			
		}else if(info==0){
			message="完善个人信息失败";
		
		}else{
			message="出现未知错误";
			
		}
		User user2 = userService.getUserByUid(uid);
		model.addAttribute("user", user2);
		model.addAttribute("message", message);
		return "desk/perfectInfo";
	}
	/*
	//通过uid得到user
	@RequestMapping("/getInfoByuid")
	@ResponseBody
	public PerfectInfo getInfoByuid(String uid){
		PerfectInfo perfectInfo = perfectInfoService.getPerfectInfoByUid(uid);
		return perfectInfo;
		
	}*/
	
}
