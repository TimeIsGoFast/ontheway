package net.zjwu.mis.sign.signRecord;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageInfo;

import net.zjwu.mis.base.controller.BaseController;
import net.zjwu.mis.sign.signRecord.model.SignRecord;
import net.zjwu.mis.sign.signRecord.service.SignRecordService;

@Controller
@RequestMapping("/signRecord")
public class SignRecordController extends BaseController<SignRecord> {
	@Autowired
	private SignRecordService signRecordService;
	
	@RequestMapping(value = "/render")
	public String render(){
		return "signRecord/list";
	}
	
	@RequestMapping(value = "/listpage")
	@ResponseBody
	public PageInfo<SignRecord> listSignRecordPaged(@RequestParam int page, @RequestParam int rows,
			@ModelAttribute SignRecord signRecord){
		PageInfo<SignRecord> pageInfo = signRecordService.listSignRecordPaged(page, rows, signRecord);
		return pageInfo;
	}
}
