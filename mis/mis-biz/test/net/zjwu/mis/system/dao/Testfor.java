
package net.zjwu.mis.system.dao;

import net.zjwu.mis.BaseTest;
import net.zjwu.mis.system.model.ClassEntity;
import net.zjwu.mis.system.service.ClassService;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class Testfor extends BaseTest{

	@Autowired
	private ClassEntityMapper claMapper;
	@Autowired
	private ClassService CS;
	
	@Test
	public void test(){
		ClassEntity cla = claMapper.getClassByCid("2");
		cla.setCid("53503");
		cla.setId(3);
		CS.createAclass(cla);
		//System.out.println(cla.getTyid());
	}
}

