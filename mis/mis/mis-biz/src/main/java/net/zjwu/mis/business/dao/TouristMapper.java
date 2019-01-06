package net.zjwu.mis.business.dao;

import java.util.List;

import net.zjwu.mis.business.model.Tourist;
import tk.mybatis.mapper.common.Mapper;

public interface TouristMapper extends Mapper<Tourist> {

	List<Tourist> selectHout();
}