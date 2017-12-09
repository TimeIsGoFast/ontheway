package net.zjwu.mis.sign.signRecord.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import net.zjwu.mis.base.service.ExampleBuilder;
import net.zjwu.mis.base.service.impl.BaseServiceImpl;
import net.zjwu.mis.sign.signRecord.dao.SignRecordMapper;
import net.zjwu.mis.sign.signRecord.model.SignRecord;
import net.zjwu.mis.sign.signRecord.service.SignRecordService;

@Service
@Transactional
public class SignRecordImpl extends BaseServiceImpl<SignRecord> implements SignRecordService {
	
	@Autowired
	private SignRecordMapper signRecordMapper;

	@Override
	public PageInfo<SignRecord> listSignRecordPaged(int page, int rows, SignRecord signRecord) {
		// TODO Auto-generated method stub
		ExampleBuilder example = new ExampleBuilder(signRecord.getClass());
		example.andEqualTo(signRecord);
		PageHelper.startPage(page, rows);
		List<SignRecord> signRecords = signRecordMapper.selectByExample(example);
		return new PageInfo<SignRecord>(signRecords);
	}

	@Override
	public int findSignRecord(SignRecord signRecord) {
		ExampleBuilder example = new ExampleBuilder(signRecord.getClass());
		example.andEqualTo(signRecord);
		List<SignRecord> signRecords = signRecordMapper.selectByExample(example);
		if (signRecords.size()<1) {
			return 0;
		}else {
			return 1;
		}
	}

}
