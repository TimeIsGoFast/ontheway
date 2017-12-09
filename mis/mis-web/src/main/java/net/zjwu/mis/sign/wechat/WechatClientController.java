package net.zjwu.mis.sign.wechat;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import net.zjwu.mis.base.controller.WechatAuthController;
import net.zjwu.mis.base.service.ExampleBuilder;
import net.zjwu.mis.sign.client.model.ClientInfo;
import net.zjwu.mis.sign.client.service.ClientInfoService;
import net.zjwu.mis.sign.signRecord.model.SignRecord;
import net.zjwu.mis.sign.signRecord.service.SignRecordService;
import net.zjwu.mis.sign.wechatClient.model.WechatClient;
import net.zjwu.mis.sign.wechatClient.service.WechatClientService;

@Controller
@RequestMapping("/")
public class WechatClientController extends WechatAuthController {
	
	@Autowired
	private WechatClientService wechatClientService;
	
	@Autowired
	private ClientInfoService clientInfoService;
	
	@Autowired
	private SignRecordService signRecordService;
	
	
//	@RequestMapping("/findClient")
//	@ResponseBody
//	public String findClient(@RequestParam String openId){
//		if (openId.equals("")||openId.equals(null)) {
//			return "OpenId错误，请重新认证";
//		}else {
//			WechatClient wechatClient = new WechatClient();
//			wechatClient.setOpenid(openId);
//			return ""+wechatClientService.findClient(wechatClient);
//		}
//		
//	}

	@Override
	public String doBusinessDetail(Model model, String code) throws IOException {
		model.addAttribute("openId",getOpenId());
		if ((getOpenId()==null)||(getOpenId().equals(""))||(getOpenId()=="")){
			//如果openId为空,返回错误提示页面
			return "";
		}else {
			WechatClient wechatClient = new WechatClient();
			wechatClient.setOpenId(getOpenId());
			//如果表里没有OpenId,返回用户注册
			if (wechatClientService.findClient(wechatClient)==0) {
				return "wechat/regist";
			}else {
				//如果有OpenId,返回签到页面
				return "wechat/sign";
			}
		}
		
	}
	
	@RequestMapping(value = "/anon/saveWeChatClientInfo")
	@ResponseBody
	public int saveClientInfo(ClientInfo clientInfo){
		clientInfoService.save(clientInfo);
		if (saveWechatClientInfo(clientInfo.getCnumber(), clientInfo.getOpenId())==1) {
			return 1;
		}else return 0;
	}
	
	public int saveWechatClientInfo(String cnumber,String openId){
		WechatClient wechatClient = new WechatClient();
		wechatClient.setCnumber(cnumber);
		wechatClient.setOpenId(openId);
		wechatClientService.save(wechatClient);
		return 1;
	}
	
	@RequestMapping(value = "/anon/getClientInfo")
	@ResponseBody
	public ClientInfo getClientInfo(String openId){
		System.out.println(openId+"testOpen");
		if ((openId==null)||(openId.equals(""))||(openId=="")) {
			return null;
		}else {
			ClientInfo clientInfo = new ClientInfo();
			clientInfo.setOpenId(openId);
			List<ClientInfo> clientInfos = clientInfoService.getClientInfo(clientInfo);
			return clientInfos.get(0);
		}
	}
	
	@RequestMapping(value="/anon/sign")
	@ResponseBody
	public int sign(String openId){
		if ((openId==null)||(openId.equals(""))||(openId=="")) {
			return 0;
		}else {
			ClientInfo clientInfo = new ClientInfo();
			clientInfo.setOpenId(openId);
			List<ClientInfo> clientInfos = clientInfoService.getClientInfo(clientInfo);
			clientInfo = clientInfos.get(0);
			SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd HH:mm");//设置日期格式
			
			SignRecord signRecord = new SignRecord();
			signRecord.setOpenId(openId);
			//如果签到表该OpenId的记录为空则插入签到数据
			if (signRecordService.findSignRecord(signRecord)==0) {
				signRecord.setCname(clientInfo.getCname());
				signRecord.setCnumber(clientInfo.getCnumber());	
				signRecord.setSignTime(df.format(new Date()));
				//System.out.println(new Date()+"测试1");// new Date()为获取当前系统时间
				return signRecordService.save(signRecord);
			}else {
				//如果签到表该OpenId的记录不为空则获取当前记录的签退时间，如果签退时间不为空，则不能再次签到
				SignRecord signRecord2 = new SignRecord();
				ExampleBuilder example = new ExampleBuilder(signRecord.getClass());
				example.andEqualTo(signRecord);
				List<SignRecord> signRecords = signRecordService.selectByExample(example);
				//System.out.println("数组长度"+signRecords.size());
				signRecord2 = signRecords.get(signRecords.size()-1);
				//System.out.println(signRecords.get(0).getLeaveTime()+"测试2");
				if ((("").equals(signRecord2.getLeaveTime()))||(null==signRecord2.getLeaveTime())||(""==signRecord2.getLeaveTime())) {
					return 2;
				}else {
					signRecord.setCname(clientInfo.getCname());
					signRecord.setCnumber(clientInfo.getCnumber());	
					signRecord.setSignTime(df.format(new Date()));
					//System.out.println(new Date()+"测试1");// new Date()为获取当前系统时间
					return signRecordService.save(signRecord);
				}
			}
		}
	}
	
	@RequestMapping(value = "/anon/leave")
	@ResponseBody
	public int leave(String openId){
		if ((openId==null)||(openId.equals(""))||(openId=="")) {
			return 0;
		}else {
			System.out.println(openId+"testO");
			ClientInfo clientInfo = new ClientInfo();
			clientInfo.setOpenId(openId);
			List<ClientInfo> clientInfos = clientInfoService.getClientInfo(clientInfo);
			clientInfo = clientInfos.get(0);
			SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd HH:mm");//设置日期格式
			
			SignRecord signRecord = new SignRecord();
			signRecord.setOpenId(openId);
			//如果签到表该OpenId的记录为空则不能插入数据，返回值为0，提示签到
			if (signRecordService.findSignRecord(signRecord)==0) {
				return 2;
			}else {
				//如果签到表该OpenId的记录不为空则获取当前记录的签到时间，如果签到时间为空，则不能签到
				SignRecord signRecord2 = new SignRecord();
				ExampleBuilder example = new ExampleBuilder(signRecord.getClass());
				example.andEqualTo(signRecord);
				List<SignRecord> signRecords = signRecordService.selectByExample(example);
				signRecord2 = signRecords.get(signRecords.size()-1);
				if (signRecord2.getSignTime()==null||signRecord2.getSignTime()==""||"".equals(signRecord2.getSignTime())) {
					//返回值为2代表没有签到，提示签到
					return 2;
				}if (!((null==signRecord2.getLeaveTime())||(""==signRecord2.getLeaveTime())||"".equals(signRecord2.getLeaveTime()))) {
					//如果当前记录已经签到，提示签到
					System.out.println(signRecord2.getLeaveTime()+"签退");
					return 2;
				}else {
					signRecord.setId(signRecord2.getId());
					signRecord.setCname(signRecord2.getCname());
					signRecord.setCnumber(signRecord2.getCnumber());
					signRecord.setSignTime(signRecord2.getSignTime());
					signRecord.setLeaveTime(df.format(new Date()));
					Date signTime = new Date(signRecord2.getSignTime());
					Date leaveTime = new Date(df.format(new Date()).toString());
					
					long temp = signTime.getTime() - leaveTime.getTime();    //相差毫秒数
			        long hours = temp / 1000 / 3600;                //相差小时数
			        long temp2 = temp % (1000 * 3600);
			        long mins = temp2 / 1000 / 60;
					
					System.out.println(temp+"测试1");// new Date()为获取当前系统时间
					signRecord.setDuration(hours + "小时"+ mins + "分钟");
					return signRecordService.update(signRecord);
				}
			}
		}
	}
}
