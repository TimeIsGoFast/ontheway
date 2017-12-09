package net.zjwu.mis.business.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/photos")
public class Photo {
	@RequestMapping(value="render")
	public String render(){
		return "photos/photos";
	}
}
