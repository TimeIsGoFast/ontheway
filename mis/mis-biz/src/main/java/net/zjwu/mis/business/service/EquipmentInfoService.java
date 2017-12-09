package net.zjwu.mis.business.service;


import com.github.pagehelper.PageInfo;

import net.zjwu.mis.base.service.BaseService;
import net.zjwu.mis.business.model.EquipmentInfo;

public interface EquipmentInfoService extends BaseService<EquipmentInfo> {

	PageInfo<EquipmentInfo> listEquipmentInfoPaged( int page,int rows,  EquipmentInfo equipmentInfo);
}
