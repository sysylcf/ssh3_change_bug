package com.lcf.shop.categorysecond.action;

import java.util.List;

import com.lcf.shop.category.service.CategoryService;
import com.lcf.shop.categorysecond.service.CategorySecondService;
import com.lcf.shop.categorysecond.vo.CategorySecond;
import com.opensymphony.xwork2.ActionSupport;

public class CategorySecondAction  extends ActionSupport{
	
	CategorySecondService categorySecondService;


	public void setCategorySecondService(CategorySecondService categorySecondService) {
		this.categorySecondService = categorySecondService;
	}






	public  String findAll(){
		
		
	 List<CategorySecond> categorySecond = categorySecondService.findAll();
		
		return "findAll";
		
	}

}
