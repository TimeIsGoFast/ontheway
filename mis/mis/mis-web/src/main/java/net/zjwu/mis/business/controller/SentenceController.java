package net.zjwu.mis.business.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/sentence")
public class SentenceController {
	@RequestMapping("/render")
	public String index(){
		return "desk/sentence/sentence";
	}
}
