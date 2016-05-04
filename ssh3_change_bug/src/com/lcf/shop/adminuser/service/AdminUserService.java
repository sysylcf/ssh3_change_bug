package com.lcf.shop.adminuser.service;

import org.springframework.transaction.annotation.Transactional;

import com.lcf.shop.adminuser.dao.AdminUserDao;
import com.lcf.shop.adminuser.vo.AdminUser;



/**后台 业务
 * 
 * @author Administrator
 *
 */
@Transactional
public class AdminUserService {
	
	//注入dao
	private AdminUserDao adminUserDao;

	
	
   public void setAdminUserDao(AdminUserDao adminUserDao) {
		this.adminUserDao = adminUserDao;
	}



public  AdminUser login(AdminUser adminuser){
	return  adminUserDao.login(adminuser);
	
	   
   }
	
    
}
