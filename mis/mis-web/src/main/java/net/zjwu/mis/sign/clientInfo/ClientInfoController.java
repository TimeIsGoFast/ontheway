package net.zjwu.mis.sign.clientInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageInfo;

import net.zjwu.mis.base.controller.BaseController;
import net.zjwu.mis.sign.client.model.ClientInfo;
import net.zjwu.mis.sign.client.service.ClientInfoService;

@Controller
@RequestMapping("/clientInfo")
public class ClientInfoController extends BaseController<ClientInfo> {
	
	@Autowired
	private ClientInfoService clientInfoService;
	
	@RequestMapping(value = "/render")
	public String render(){
		return "clientInfo/list";
	}
	
	@RequestMapping(value = "/listpage")
	@ResponseBody
	public PageInfo<ClientInfo> listClientInfoPaged(@RequestParam int page, @RequestParam int rows, 
			@ModelAttribute ClientInfo clientInfo){
		PageInfo<ClientInfo> pageInfo = clientInfoService.listClientInfoPaged(page, rows, clientInfo);
		return pageInfo;
	}
}
