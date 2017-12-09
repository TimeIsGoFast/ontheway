package net.zjwu.mis.sign.wechat;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/pagetest")
public class PageTestController {
	
	@RequestMapping(value = "/render")
	public String render(){
		return "wechat/sign";
	}
}
