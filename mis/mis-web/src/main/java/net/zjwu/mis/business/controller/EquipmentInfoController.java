package net.zjwu.mis.business.controller;

import net.zjwu.mis.base.controller.BaseController;
import net.zjwu.mis.business.model.EquipmentInfo;
import net.zjwu.mis.business.service.EquipmentInfoService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/equipmentinfo")
public class EquipmentInfoController extends BaseController<EquipmentInfo>{

	@Autowired
	private EquipmentInfoService equipmentInfoService;
	
	@RequestMapping(value = "/render")
	public String render(){
		return "equipmentInfo/list";
	}
	
	@RequestMapping(value = "/listpage")
	@ResponseBody
	public PageInfo<EquipmentInfo> listEquipemtInfo(@RequestParam int page,
			@RequestParam int rows, @ModelAttribute EquipmentInfo condition) {
		PageInfo<EquipmentInfo> pageInfo = equipmentInfoService.listEquipmentInfoPaged(page,rows,condition);
		return pageInfo;
	}
}
