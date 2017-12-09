package net.zjwu.mis.system.dao;

//import java.util.List;

import net.zjwu.mis.system.model.ClassEntity;
import tk.mybatis.mapper.common.Mapper;

public interface ClassEntityMapper extends Mapper<ClassEntity> {
	ClassEntity getClassByCid(String cid);	
	
	void deleteClassByCid(String cid);

}