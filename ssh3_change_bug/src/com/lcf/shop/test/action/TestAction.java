package com.lcf.shop.test.action;

import java.util.List;

import com.lcf.shop.category.service.CategoryService;
import com.lcf.shop.category.vo.Category;
import com.lcf.shop.product.service.ProductService;
import com.lcf.shop.user.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sun.org.apache.regexp.internal.recompile;

public class TestAction  extends ActionSupport{

	/**
	 * 
	 */
	
	
	// 注入一级分类的Service:
		private CategoryService categoryService;
		// 注入商品的Service
		private ProductService productService;
		private UserService userService;
		
		public void setUserService(UserService userService) {
			this.userService = userService;
		}

		public void setCategoryService(CategoryService categoryService) {
			this.categoryService = categoryService;
		}

		public void setProductService(ProductService productService) {
			this.productService = productService;
		}
	
	
	private static final long serialVersionUID = 1L;

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return SUCCESS;
	}
	
	
	public String top(){
		return "top";
	}
	
	
	public String left(){
		return "left";
	}
	
	
	public String welcome(){
		return "welcome";
	}
	
	public String bottom(){
		return "bottom";
	}
	
	
  public String testwelcome(){
	  List<Category> cList = categoryService.findAll();
	 
	 ActionContext.getContext().getValueStack().set("cList", cList);
	  
	  for (Category category : cList) {
		  System.out.println(category.getCname()+category.getCid());
		
	}
	  
	  return "testwelcome";
  }
  
  public String Ajax(){
	  return "ajax"; 
  }
  
  public String add_jump(){
	  return "add_jump";
  }
  
  
}
