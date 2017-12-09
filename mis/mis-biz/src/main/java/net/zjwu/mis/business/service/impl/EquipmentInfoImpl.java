package net.zjwu.mis.business.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import net.zjwu.mis.base.service.ExampleBuilder;
import net.zjwu.mis.base.service.impl.BaseServiceImpl;
import net.zjwu.mis.business.dao.businessMapper;
import net.zjwu.mis.business.model.EquipmentInfo;
import net.zjwu.mis.business.service.EquipmentInfoService;

@Service
@Transactional
public class EquipmentInfoImpl extends BaseServiceImpl<EquipmentInfo> implements EquipmentInfoService{

	@Autowired
	private businessMapper equipmentInfoMapper;
	
	@Override
	public PageInfo<EquipmentInfo> listEquipmentInfoPaged(int page, int rows,
			EquipmentInfo equipmentInfo) {
		ExampleBuilder example = new ExampleBuilder(equipmentInfo.getClass());
		example.andEqualTo(equipmentInfo);
		PageHelper.startPage(page, rows);
		List<EquipmentInfo> equipmentInfos = equipmentInfoMapper.selectByExample(example);
		return new PageInfo<EquipmentInfo>(equipmentInfos);
	}

	
}
