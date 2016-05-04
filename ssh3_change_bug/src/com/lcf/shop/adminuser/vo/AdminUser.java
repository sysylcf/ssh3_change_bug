package com.lcf.shop.adminuser.vo;

public class AdminUser {
	private Integer uid;
	private String username;
	private String password;
	private Integer level;
	
	
	
	public AdminUser() {
		super();
	}
	public AdminUser(Integer uid, String username, String password ,Integer  level) {
		super();
		this.uid = uid;
		this.username = username;
		this.password = password;
		this.level = level;
	}
	
	
	
	public Integer getLevel() {
		return level;
	}
	public void setLevel(Integer level) {
		this.level = level;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}

}
