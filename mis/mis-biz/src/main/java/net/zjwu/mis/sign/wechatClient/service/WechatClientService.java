package net.zjwu.mis.sign.wechatClient.service;


import net.zjwu.mis.base.service.BaseService;
import net.zjwu.mis.sign.wechatClient.model.WechatClient;

public interface WechatClientService extends BaseService<WechatClient> {
	
	int findClient(WechatClient wechatClient);
}
