package net.zjwu.mis.business.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import net.zjwu.mis.base.controller.BaseController;
import net.zjwu.mis.business.constans.Constans;
import net.zjwu.mis.business.model.Tourist;
import net.zjwu.mis.business.service.TouristService;
import net.zjwu.mis.business.vo.ResultVo;
import net.zjwu.mis.utils.PropertyUtil;

@RequestMapping("/travel")
@Controller
public class TouristController extends BaseController<Tourist>{
	
	@Autowired
	private TouristService touristService;
	
	//首页
	@RequestMapping("/render")
	public String render(Model model){
		List<Tourist> list = touristService.selectAll();
		model.addAttribute("list", list);
		return "system/travel/travel";
	}
	
	@RequestMapping("/addTravel")
	public String addTravel(){
		return "system/travel/travel_add";
	}
	
	//添加旅行地点
	 @RequestMapping("/travelAddOrUpdate")
     public String bookAddOrUpdate(Tourist tourist,@RequestParam MultipartFile travel_pic,HttpServletRequest request,Model model) throws IllegalStateException, IOException{
   	  String originalFilename = travel_pic.getOriginalFilename();
 		  if(travel_pic!=null && originalFilename!=null && originalFilename.length()>0){
 			//得到保存路径
 			String savepath = PropertyUtil.getProperty("book.uplod.url");
 			//得到新的图片名称
 			String filename = UUID.randomUUID()+originalFilename.substring(originalFilename.lastIndexOf("."));
 			String picUrl = "travel"+File.separator+filename;
 			File newfile = new File(savepath+picUrl);
 			//将图片存到硬盘里
 			travel_pic.transferTo(newfile);
 			//将图片名称存到数据库
 			tourist.setPicUrl(picUrl);
 		  }
 		 tourist.setCreateTime(new Date());
 		 touristService.save(tourist);
   	     List<Tourist> list = touristService.selectAll();
   	     model.addAttribute("list", list);
   		return "system/travel/travel";
     }
	 
	 //deletetravel
	 @RequestMapping("/deletetravel")
	 @ResponseBody
	 public ResultVo deletetravel(int id){
		  ResultVo rs = new ResultVo();
    	  rs.setCode(Constans.RESULT_SUCCESS);
    	  try{
    		  touristService.delete(id);
    	  }catch(Exception e){
    		  rs.setCode(Constans.RESULT_FAIL);
    	  }
    	  return rs; 
	 }
}
