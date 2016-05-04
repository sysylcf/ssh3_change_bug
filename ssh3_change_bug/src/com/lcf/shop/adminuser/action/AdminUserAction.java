package com.lcf.shop.adminuser.action;

import org.apache.struts2.ServletActionContext;

import com.lcf.shop.adminuser.service.AdminUserService;
import com.lcf.shop.adminuser.vo.AdminUser;
import com.lcf.shop.utils.MD5Util;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * 后台用户管理
 * 
 * @author Administrator
 * 
 */

public class AdminUserAction extends ActionSupport implements
		ModelDriven<AdminUser> {
	AdminUser adminuser = new AdminUser();

	@Override
	public AdminUser getModel() {
		// TODO Auto-generated method stub
		return adminuser;
		
	}

	// 注入service
	private AdminUserService adminUserService;


	public void setAdminUserService(AdminUserService adminUserService) {
		this.adminUserService = adminUserService;
	}



	@Override
	public String execute() throws Exception {
		return "adminIndex";
	}

	public String index() throws Exception {
		return "adminIndex";
	}

	public String login() {
		// 调用service验证登陆
		if(adminuser.getUsername() ==null || adminuser.getPassword()== null){
			return "loginFail";
		}
		System.out.println("password_old "+adminuser.getUsername());
		System.out.println("password_old "+adminuser.getPassword());
		adminuser.setPassword(MD5Util.getMD5String(adminuser.getPassword()));
		AdminUser existadminuser =adminUserService.login(adminuser);
		System.out.println(ServletActionContext.getRequest().getSession().toString());
		System.out.println("username:"+adminuser.getUsername()+"password"+adminuser.getPassword());
		if (existadminuser == null) {

			// 登陆失败
			this.addActionError("用户名或密码错误");
			System.out.println("1111111111111111失敗");
			return "loginFail";

		}

		else {
			// 登陆成功
			ServletActionContext.getRequest().getSession()
					.setAttribute("existadminuser", existadminuser);
            System.out.println("2222222222222222222222成功");
			return "loginSuccess";
		}

	}
	
	public String edit(){
		adminuser =  (AdminUser) ServletActionContext.getRequest().getSession().getAttribute("existadminuser");
		return "edit";
	}
	
	
	
	/**
	 * 管理员退出的方法
	 */
	public String quit(){
		// 销毁session
		ServletActionContext.getRequest().getSession().invalidate();
		return "quit";
	}

}
