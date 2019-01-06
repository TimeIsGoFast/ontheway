package net.zjwu.mis.business.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
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

import net.zjwu.mis.business.model.Guide;
import net.zjwu.mis.business.model.Tourist;
import net.zjwu.mis.business.model.TravelComment;
import net.zjwu.mis.business.service.GuideService;
import net.zjwu.mis.business.service.TouristService;
import net.zjwu.mis.business.service.TravelCommentService;
import net.zjwu.mis.business.vo.ResultVo;
import net.zjwu.mis.system.model.User;
import net.zjwu.mis.utils.DateFormatUtil;
import net.zjwu.mis.utils.PropertyUtil;
import net.zjwu.mis.utils.SpringUtil;

@Controller
@RequestMapping("/deskTravel")
public class DeskTravelController {
	@Autowired
	private TouristService touristService;
	
	@Autowired
	private TravelCommentService travelCommentService;
	
	@Autowired
	private GuideService guideService;
   
	@RequestMapping("/render")
	public String render(Model model){
		List<Tourist> travels = touristService.selectHout();
		List<Guide> guides = guideService.selectAll();
		model.addAttribute("guides", guides);
		model.addAttribute("travels", travels);
		return "desk/travel/travel";
	}
	
	//travel detail
	@RequestMapping("/travelDetail")
	public String travelDetail(int id,Model model){
		Tourist travle = touristService.selectByKey(id);
		List<TravelComment> comments = touristService.getCommentsByTravelId(id);
		model.addAttribute("comments", comments);
		model.addAttribute("travel", travle);
		return "desk/travel/travelDetail";
	}
	
	//评论
	@RequestMapping("/addTravelComment")
	@ResponseBody
	public ResultVo addTravelComment(int travelId,String comment){
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String dateTime = format.format(date);
		ResultVo result= new ResultVo();
		result.setCode(1);
		result.setMessage("success");
		User user = SpringUtil.getCurrentUser();
		try {
			TravelComment bc = new TravelComment();
			bc.setTopicId(travelId);
			bc.setContent(comment);
			bc.setFromUid(user.getUid());
			bc.setName(user.getName());
			bc.setRemark(user.getPicUrl());
			bc.setPraise(0);
			bc.setCommentDate(dateTime);
			travelCommentService.save(bc);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	//赞一下
	@RequestMapping("/zanyixa")
	@ResponseBody
	public ResultVo zanyixa(int number,int commentId){
		ResultVo result= new ResultVo();
		result.setCode(1);
		result.setMessage("success");
		try {
		TravelComment bc = travelCommentService.selectByKey(commentId);
		bc.setPraise(number);
		int info = travelCommentService.update(bc);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	//游记
	@RequestMapping("/guideRender")
	public String guideRender(){
		return "desk/travel/guide";
	}
	
	//addGuide
	@RequestMapping("/addGuide")
	public String addGuide(Guide guide,@RequestParam MultipartFile imgfile,HttpServletRequest request,Model model) throws IllegalStateException, IOException{

		String originalFilename = imgfile.getOriginalFilename();
		if(imgfile!=null && originalFilename!=null && originalFilename.length()>0){
			//得到保存路径
			String savepath = PropertyUtil.getProperty("book.uplod.url");
 			//得到新的图片名称
 			String filename = UUID.randomUUID()+originalFilename.substring(originalFilename.lastIndexOf("."));
 			String picUrl = "travel"+File.separator+filename;
 			File newfile = new File(savepath+picUrl);
			//将图片存到硬盘里
			imgfile.transferTo(newfile);
			//将图片名称存到数据库
			guide.setPicUrl(picUrl);
			
		}
		User user = SpringUtil.getCurrentUser();
		guide.setFromUid(user.getUid());
		guide.setName(user.getName());
		guide.setCommentDate(DateFormatUtil.toDateoString(new Date()));
	    guideService.save(guide);
		List<Tourist> travels = touristService.selectHout();
		List<Guide> guides = guideService.selectAll();
		model.addAttribute("guides", guides);
		model.addAttribute("travels", travels);
		return "desk/travel/travel";
	}
	
	//guideDetail
	@RequestMapping("/guideDetail")
	public String guideDetail(int id,Model model){
		Guide guide = guideService.selectByKey(id);
		model.addAttribute("guide", guide);
		return "desk/travel/guide_detail";
	}
	
	@RequestMapping("/tieshi1")
	public String tieshi1(){
		return "desk/travel/tieshi1";
	}
	@RequestMapping("/tieshi2")
	public String tieshi2(){
		return "desk/travel/tieshi2";
	}
}
