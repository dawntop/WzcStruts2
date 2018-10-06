package com.wzc.sys;

import java.util.Map;

import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class MyInterceptor extends AbstractInterceptor {

	public static final Logger log = Logger.getLogger(BasicAction.class.getName());
	private static final long serialVersionUID = 1L;

	public String intercept(ActionInvocation ai) throws Exception {
		if (null == ai) {
			return null;
		}
		Map<?, ?> session = ai.getInvocationContext().getSession();
		String loginInfo = (String) session.get("name");
		if(null!=loginInfo){
			log.info("session处在有效期间");
			return ai.invoke();//已登录时正常执行
		}else{
			log.info("session失效");
			return "login";//没有登录时转到登录页
		}
	}
}
