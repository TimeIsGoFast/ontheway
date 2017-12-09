package net.zjwu.mis.sign.wechatClient.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.zjwu.mis.base.service.ExampleBuilder;
import net.zjwu.mis.base.service.impl.BaseServiceImpl;
import net.zjwu.mis.sign.wechatClient.dao.WechatClientMapper;
import net.zjwu.mis.sign.wechatClient.model.WechatClient;
import net.zjwu.mis.sign.wechatClient.service.WechatClientService;

@Service
@Transactional
public class WechatInfoImpl extends BaseServiceImpl<WechatClient> implements WechatClientService{
	
	@Autowired
	private WechatClientMapper wechatClientMapper;
	
	public int findClient(WechatClient wechatClient){
		ExampleBuilder example = new ExampleBuilder(wechatClient.getClass());
		example.andEqualTo(wechatClient);
		List<WechatClient> wechatClients = wechatClientMapper.selectByExample(example);
		if (wechatClients.size()<1) {
			return 0;
		}else return 1;
	}
}
