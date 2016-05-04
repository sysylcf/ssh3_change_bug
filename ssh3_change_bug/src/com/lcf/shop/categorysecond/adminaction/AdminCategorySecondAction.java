package com.lcf.shop.categorysecond.adminaction;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import sun.reflect.ReflectionFactory.GetReflectionFactoryAction;

import com.lcf.shop.category.service.CategoryService;
import com.lcf.shop.category.vo.Category;
import com.lcf.shop.categorysecond.service.CategorySecondService;
import com.lcf.shop.categorysecond.vo.CategorySecond;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * @author Administrator
 *
 */
public class AdminCategorySecondAction  extends ActionSupport implements ModelDriven<CategorySecond>{
		Category category= new Category();
	    CategorySecond categorySecond = new CategorySecond();
	    int index;
	    int category_cid =1;
	    int cid;
	  
	/*public void setCategorySecond(CategorySecond categorySecond) {
			this.categorySecond = categorySecond;
		}*/


	public int getCid() {
			return cid;
		}


		public void setCid(int cid) {
			this.cid = cid;
		}


	public int getIndex() {
			return index;
		}


	public int getCategory_cid() {
		return category_cid;
	}


	public void setCategory_cid(int category_cid) {
		this.category_cid = category_cid;
	}


	public void setIndex(int index) {
			this.index = index;
		}

	public void setCategory(Category category) {
		this.category = category;
	}

	@Override
	public CategorySecond getModel() {
		// TODO Auto-generated method stub
		return categorySecond;
	}
	
	
	CategoryService categoryService = new CategoryService();
	
	//一级目录注入
	public void setCategoryService(CategoryService categorySevice) {
		this.categoryService = categorySevice;
	}
	
	CategorySecondService categorySecondService = new CategorySecondService();

	//二级目录service层侏注入
	public void setCategorySecondService(CategorySecondService categorySecondSevice) {
		this.categorySecondService = categorySecondSevice;
	}
	
	
	
	/**
	 * 返回一级和二级目录的列表
	 * @return findAll
	 */
	public String findAll(){
		List<Category> cList = categoryService.findAll();

		/*List< String > sList = new ArrayList<String>();
		List< Integer > vList = new ArrayList<Integer>();*/
		
		ActionContext.getContext().getValueStack().set("cList", cList);
		
		/*for (Category category : cList) {
			sList.add(category.getCname().toString());
			vList.add(category.getCid());
				
		}
		ActionContext.getContext().getValueStack().set("sList",sList);*/
		return "findAll";
	}
	
	
	/**
	 * 同cid 查询二级目录列表  未使用
	 * @return findByCid
	 */
/*	public String findByCid(){
	 List<CategorySecond>  slist= categorySecondService.findByCid(category);
	 
	 ActionContext.getContext().getValueStack().set("sList", slist);;
		return "findByCid";
		
	}*/
	
	
	/**二级管理页面跳转
	 * 导航栏跳转的二级菜单管理页
	 * @return
	 */
	public String findSecond(){
		 return "findSecond";
	}
	
	
	
	/**添加二级分类
	 * @return
	 */
	public String add(){
	    categorySecondService.save(categorySecond);
	    return listIndex(); 
	}
	
	
	/**二级分类添加 跳转
	 * @return
	 */
	public String add_jump(){
		
		//cid = categorySecond.getCategory().getCid();
		 return "add_jump";
	}
	
	
	public String delete(){
		
		boolean flag = categorySecondService.delete(categorySecond);
		return listIndex();
	}
	
	/**跳转到编辑界面
	 * @return edit
	 */
	public String edit(){
		//category = categorySecond.find(category.getCid());
		categorySecond = categorySecondService.findByCsid(categorySecond.getCsid());
	     System.out.println(category.getCname()+"gggggggggggggggggggggggggggggggggg");
		return "edit";
	}

/**修改二级菜单
 * @return saveSuccess
 */
public String update(){
	// category = categoryService.findByCid(categorySecond.getCategory().getCid());
		
		//categorySecond.setCsid(16);
	 System.out.println("categorySecond"+categorySecond.getCsname());
		// categorySecond.setCsname("add test011f222");
		// categorySecond.setCategory(category);
		 categorySecondService.update(categorySecond);
  System.out.println(categorySecond.getCategory().getCname()+"ddddd");
	//	return "saveSuccess";
  return listIndex();
	}
	

public String listIndex(){
	
	 System.out.println(category_cid);
	
	List<Category> cList = categoryService.findAll();
	// category = categoryService.findByCid(category_cid);
//	List<CategorySecond> sList = categorySecondService.findByCid(category);
	//List<Category> sList = categoryService.findAll();
	//System.out.println("test"+sList.get(0).getCsname());
	
	ActionContext.getContext().getValueStack().set("cList",cList);
	ServletActionContext.getRequest().getSession().setAttribute("category_cid", category_cid);
	
	return "listIndex";
}

}
