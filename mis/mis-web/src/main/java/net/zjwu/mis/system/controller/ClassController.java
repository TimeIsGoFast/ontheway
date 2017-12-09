
package net.zjwu.mis.system.controller;

import java.util.List;

import net.zjwu.mis.base.controller.BaseController;
import net.zjwu.mis.system.model.ClassEntity;
import net.zjwu.mis.system.model.User;
import net.zjwu.mis.system.service.ClassService;
import net.zjwu.mis.system.vo.Result;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/class")
public class ClassController extends BaseController<ClassEntity> {

	@Autowired
	private ClassService classService;


	@RequestMapping(value = "/listBy")
	@ResponseBody
	public PageInfo<ClassEntity> listClasses(@RequestParam int page,
			@RequestParam int rows, @ModelAttribute ClassEntity classeEntity) {
		PageInfo<ClassEntity> pageInfo = classService.listClassesPaged(page, rows,
				classeEntity);
		return pageInfo;
	}


	@RequestMapping(value = "/render")
	public String render() {
		return "system/class/list";
	}

	
}
