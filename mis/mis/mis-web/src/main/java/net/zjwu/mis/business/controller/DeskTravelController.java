package net.zjwu.mis.business.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/deskTravel")
public class DeskTravelController {
   
	@RequestMapping("/render")
	public String render(Model model){
		
		return "desk/travel/travel";
	}
}
