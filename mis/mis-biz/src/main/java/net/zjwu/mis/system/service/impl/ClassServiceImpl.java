package net.zjwu.mis.system.service.impl;

import java.util.List;

import net.zjwu.mis.base.service.ExampleBuilder;
import net.zjwu.mis.base.service.impl.BaseServiceImpl;
import net.zjwu.mis.system.dao.ClassEntityMapper;
import net.zjwu.mis.system.model.ClassEntity;
import net.zjwu.mis.system.model.User;
import net.zjwu.mis.system.service.ClassService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
@Transactional
public class ClassServiceImpl extends BaseServiceImpl<ClassEntity> implements ClassService {
	
	@Autowired
	private ClassEntityMapper classMapper;

	@Override
	public List<ClassEntity> selectBy(ClassEntity T){
		ExampleBuilder example = new ExampleBuilder(T.getClass());
		example.andEqualTo(T);
		return classMapper.selectByExample(example);
	}
	@Override
	public List<ClassEntity> selectAll(){
		return classMapper.selectAll();
	}

	@Override
	public ClassEntity getClassByCid(String cid) {
		return classMapper.getClassByCid(cid);
	}
	
	@Override
	public PageInfo<ClassEntity> listClassesPaged(int page,int pageSize,ClassEntity classEntity) {
		ExampleBuilder example = new ExampleBuilder(classEntity.getClass());
		example.andEqualTo(classEntity);
		PageHelper.startPage(page, pageSize);
		List<ClassEntity> Class = classMapper.selectByExample(example);
		return new PageInfo<ClassEntity>(Class);
	}


	@Override
	public void createAclass(ClassEntity newclass) {
		ClassEntity exist = getClassByCid(newclass.getCid());
		if (exist != null) {
			throw new RuntimeException("the new class is already exists:"
					+ newclass.getCid());
		}
		classMapper.insert(newclass);
	}

	@Override
	public void updateAclass(ClassEntity newclass) {


		classMapper.updateByPrimaryKey(newclass);
	}

//	@Override
//	public List<ClassEntity> listClassByCid(String cid) {
//		return (List<ClassEntity>) classMapper.getClassByCid(cid);
//	}
	
	
}
