/**
 * 
 */
package net.zjwu.mis.base.controller;

import java.io.IOException;
import java.net.URLEncoder;

import net.zjwu.mis.util.HttpConnectionUtils;
import net.zjwu.mis.util.PropertyManager;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.mysql.jdbc.StringUtils;

/**
 * @author Lay
 *
 */
public abstract class WechatAuthController {

	public static final String APP_ID = PropertyManager.getString(
			"config.properties", "APP_ID");

	public static final String APP_SECRET = PropertyManager.getString(
			"config.properties", "APP_SECRET");

	public static final String REDIRECT_URL = PropertyManager.getString(
			"config.properties", "REDIRECT_URL");

	public static final String AUTHORIZE_URL = PropertyManager.getString(
			"config.properties", "AUTHORIZE_URL");

	public static final String ACCESS_TOKEN_URL = PropertyManager.getString(
			"config.properties", "ACCESS_TOKEN_URL");

	public static final String USER_INFO_URL = PropertyManager.getString(
			"config.properties", "USER_INFO_URL");

	private String openId ="";

	@RequestMapping(value = "/anon/doBusiness")
	public String doBusiness(Model model, @RequestParam String code)
			throws IOException {
		if (StringUtils.isNullOrEmpty(code)) {
			String authRedirectUrl = String.format(AUTHORIZE_URL, APP_ID,
					URLEncoder.encode(REDIRECT_URL, "UTF-8"));
			return "redirect:" + authRedirectUrl;
		} else {
			String accessTokenUrl = String.format(ACCESS_TOKEN_URL, APP_ID,
					APP_SECRET, code);
			String accessTokenStr = HttpConnectionUtils.doGet(accessTokenUrl);
			JSONObject accessTokenObj = JSON.parseObject(accessTokenStr);
			String accessToken = accessTokenObj.getString("access_token");
			openId = accessTokenObj.getString("openid");

			String userInfoUrl = String.format(USER_INFO_URL, accessToken,
					openId);
			String userInfoStr = HttpConnectionUtils.doGet(userInfoUrl);
			JSONObject userInfoObj = JSONObject.parseObject(userInfoStr);
			String nickName = userInfoObj.getString("nickname");

//			model.addAttribute("openId", openId);
//			model.addAttribute("nickName", nickName);
			

			return doBusinessDetail(model, code);
		}
	}

	public abstract String doBusinessDetail(Model model,
			@RequestParam String code) throws IOException;

	public String getOpenId(){
		return openId;
	}
}
