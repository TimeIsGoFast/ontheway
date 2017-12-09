package net.zjwu.mis.sign.client.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import net.zjwu.mis.base.service.ExampleBuilder;
import net.zjwu.mis.base.service.impl.BaseServiceImpl;
import net.zjwu.mis.sign.client.dao.ClientInfoMapper;
import net.zjwu.mis.sign.client.model.ClientInfo;
import net.zjwu.mis.sign.client.service.ClientInfoService;

@Service
@Transactional
public class ClientInfoImpl extends BaseServiceImpl<ClientInfo> implements ClientInfoService {
	
	@Autowired
	private ClientInfoMapper clientInfoMapper;

	@Override
	public PageInfo<ClientInfo> listClientInfoPaged(int page, int rows,
			ClientInfo clientInfo){
		ExampleBuilder example = new ExampleBuilder(clientInfo.getClass());
		example.andEqualTo(clientInfo);
		PageHelper.startPage(page, rows);
		List<ClientInfo> clientInfos = clientInfoMapper.selectByExample(example);
		return new PageInfo<ClientInfo>(clientInfos);
	}

	@Override
	public List<ClientInfo> getClientInfo(ClientInfo clientInfo) {
		ExampleBuilder example = new ExampleBuilder(clientInfo.getClass());
		example.andEqualTo(clientInfo);
		List<ClientInfo> clientInfos = clientInfoMapper.selectByExample(example);
		return clientInfos;
	}
}
