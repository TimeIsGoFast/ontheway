package net.zjwu.mis.sign.signRecord.service;

import com.github.pagehelper.PageInfo;

import net.zjwu.mis.base.service.BaseService;
import net.zjwu.mis.sign.signRecord.model.SignRecord;

public interface SignRecordService extends BaseService<SignRecord> {

	PageInfo<SignRecord> listSignRecordPaged(int page, int rows, SignRecord signRecord);
	
	int findSignRecord(SignRecord signRecord);
}
