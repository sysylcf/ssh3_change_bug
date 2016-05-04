package com.lcf.shop.category.adminaction;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.jasper.tagplugins.jstl.core.Set;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.dispatcher.ActionContextCleanUp;

import com.lcf.shop.category.service.CategoryService;
import com.lcf.shop.category.vo.Category;
import com.lcf.shop.categorysecond.vo.CategorySecond;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.inject.Context;

public class AdminCategoryAction  extends ActionSupport implements ModelDriven<Category>{
     Category category=new Category();
	CategoryService categoryService;
	
	int index;
	
	
	public int getIndex() {
		return index;
	}

	public void setIndex(int index) {
		this.index = index;
	}

	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}

	@Override
	public Category getModel() {
		// TODO Auto-generated method stub
		return category;
	}
	
	/**categorySecond action 下的功能 （已经移植）
	 * 获取一、二级分类的类表
	 * @return
	 */
	public String findAll(){
		List<Category> cList = categoryService.findAll();

		List< String > sList = new ArrayList<String>();
		List< Integer > vList = new ArrayList<Integer>();
		
		ActionContext.getContext().getValueStack().set("cList", cList);
		
		for (Category category : cList) {
			sList.add(category.getCname().toString());
			vList.add(category.getCid());
				
		}
		ActionContext.getContext().getValueStack().set("sList",sList);
		return "findAll";
	}
	
	public String findAllByOne(){
		List<Category> cList = categoryService.findAll();

		List< String > sList = new ArrayList<String>();
		List< Integer > vList = new ArrayList<Integer>();
		
		ActionContext.getContext().getValueStack().set("cList", cList);
		
		/*for (Category category : cList) {
			sList.add(category.getCname().toString());
			vList.add(category.getCid());
			
			
		}
		ActionContext.getContext().getValueStack().set("sList",sList);*/
		return "findAllByOne";
	}
	
	
	
	
	public String welcome(){
		return"welcome";
	}
	
	
	
	
	public String add_jump(){
		 return "add_jump";
	}

	public String edit(){
		category = categoryService.findByCid(category.getCid());
	     System.out.println(category.getCname()+"gggggggggggggggggggggggggggggggggg");
		return "edit";
	}
	
	public String save(){
		boolean b= categoryService.save(category);
		return findAllByOne();
	}

	public String delete(){
		
		boolean b= categoryService.delete(category);
		return findAllByOne();
		
	}
	
	public String update(){
		
		categoryService.update(category);
		
		
		return findAllByOne();
	}
	
	
	public String listTop(){
		return "listTop";
	}
	
	
	
	
	/**categorySecond action 下的功能 （已经移植）
	 * 获取一、二级分类的类表
	 * @return
	 */
	public String listIndex(){
		
		 System.out.println(index);
		List<Category> cList = categoryService.findAll();
        
		ActionContext.getContext().getValueStack().set("cList",cList);
		ServletActionContext.getRequest().getSession().setAttribute("index", index);
		return "listIndex";
	}
	public String findCategory(){
		return "findCategory";
	}
}
