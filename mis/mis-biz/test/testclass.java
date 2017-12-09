import net.zjwu.mis.system.dao.ClassEntityMapper;
//import net.zjwu.mis.system.service.ClassService;
import net.zjwu.mis.system.model.ClassEntity;

import org.junit.Test;
import org.springframework.test.annotation.Rollback;

public class testclass {
	private ClassEntityMapper classMapper;
	
	@Test
	@Rollback(false)
	public void testgetClassByCid(){
		ClassEntity test = classMapper.getClassByCid("test");
		System.out.println("壹贰叁肆伍陆柒捌玖拾");
		System.out.println(test.getTyid());
	}


}
