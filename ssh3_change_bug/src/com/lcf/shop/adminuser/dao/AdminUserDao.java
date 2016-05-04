package com.lcf.shop.adminuser.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.lcf.shop.adminuser.vo.AdminUser;

public class AdminUserDao extends HibernateDaoSupport{

	
	//登陆方法
	
	public AdminUser login(AdminUser adminuser) {
		String hql = "from AdminUser where username = ? and password = ? ";
	List<AdminUser>	list = this.getHibernateTemplate().find(hql,adminuser.getUsername(),adminuser.getPassword());
		if(list!=null&&list.size()>0)
			return list.get(0);
		return null;
	   }

}
