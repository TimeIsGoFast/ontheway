package net.zjwu.mis.business.dao;

import net.zjwu.mis.business.model.EquipmentInfo;
import tk.mybatis.mapper.common.Mapper;

public interface businessMapper extends Mapper<EquipmentInfo> {
	EquipmentInfo getEquipmentInfoByBrand(String brand);
}