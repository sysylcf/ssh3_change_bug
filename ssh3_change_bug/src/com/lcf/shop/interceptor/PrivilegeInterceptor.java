package com.lcf.shop.interceptor;


import org.aopalliance.intercept.Invocation;
import org.apache.struts2.ServletActionContext;

import com.lcf.shop.adminuser.vo.AdminUser;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class PrivilegeInterceptor extends MethodFilterInterceptor {

	/**
	 * 
	 */


	@Override
	protected String doIntercept(ActionInvocation actionInvocation) throws Exception {
		AdminUser existadminuser= (AdminUser) ServletActionContext.getRequest().getSession().getAttribute("existadminuser");
		
		
		if(existadminuser==null)
		{
			//没有登录
			
		ActionSupport actionSupport =	(ActionSupport) actionInvocation.getAction();
		actionSupport.addActionError("您还没有登录，没有操作的权限");
			return "login";
			
		}
		else {
			
			//已经登录		
		  return actionInvocation.invoke();
	  
		}
		
		
	}
	
	
	

}
