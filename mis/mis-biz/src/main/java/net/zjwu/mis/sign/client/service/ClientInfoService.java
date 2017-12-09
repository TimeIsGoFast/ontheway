package net.zjwu.mis.sign.client.service;

import java.util.List;

import com.github.pagehelper.PageInfo;

import net.zjwu.mis.base.service.BaseService;
import net.zjwu.mis.sign.client.model.ClientInfo;

public interface ClientInfoService extends BaseService<ClientInfo> {

	PageInfo<ClientInfo> listClientInfoPaged(int page, int rows, ClientInfo clientInfo);
	
	List<ClientInfo> getClientInfo(ClientInfo clientInfo);
}
