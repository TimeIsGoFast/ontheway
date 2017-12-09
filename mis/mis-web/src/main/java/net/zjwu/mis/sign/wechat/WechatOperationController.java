package net.zjwu.mis.sign.wechat;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import net.zjwu.mis.sign.client.dao.ClientInfoMapper;
import net.zjwu.mis.sign.client.model.ClientInfo;
import net.zjwu.mis.sign.client.service.ClientInfoService;
import net.zjwu.mis.sign.wechatClient.dao.WechatClientMapper;
import net.zjwu.mis.sign.wechatClient.model.WechatClient;
import net.zjwu.mis.sign.wechatClient.service.WechatClientService;

@Controller
@RequestMapping("/wechatOperation")
public class WechatOperationController {
	@Autowired
	private ClientInfoService clientInfoService;
	
	@Autowired
	private WechatClientService wechatClientService;
	
	@RequestMapping(value = "/getClientInfo")
	@ResponseBody
	public ClientInfo getClientInfo(ClientInfo clientInfo){
		List<ClientInfo> clientInfos = clientInfoService.getClientInfo(clientInfo);
		return clientInfos.get(0);
	}
	
	@RequestMapping(value = "/test")
	@ResponseBody
	public String test(ClientInfo clientInfo){
		List<ClientInfo> clientInfos = clientInfoService.getClientInfo(clientInfo);
		String client = clientInfos.get(0).getCname();
		return client;
	}
}
