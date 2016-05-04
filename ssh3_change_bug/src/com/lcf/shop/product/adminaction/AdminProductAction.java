package com.lcf.shop.product.adminaction;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;



import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.lcf.shop.category.service.CategoryService;
import com.lcf.shop.category.vo.Category;
import com.lcf.shop.categorysecond.service.CategorySecondService;
import com.lcf.shop.categorysecond.vo.CategorySecond;
import com.lcf.shop.product.service.ProductService;
import com.lcf.shop.product.vo.Product;
import com.lcf.shop.utils.MD5Util;
import com.lcf.shop.utils.PageBean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class AdminProductAction extends ActionSupport implements ModelDriven<Product>{
    private  Product product = new Product(); 
 
    
	@Override
	public Product getModel() {
		return product;
	}
	
	//分页的页号
	private Integer page =0;
	private List<Category> cList;
	private Map<Integer,List<CategorySecond> > sMap;
	private int ncsid;   //对应product/index_top ncsid
	private int ncid ;    //对应product/index_top nsid

	
	//新建商品
	private File upload;
	private String uploadFileName;
	private String uploadContentType;
	
		
	
	public void setUpload(File upload) {
		this.upload = upload;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	

	public int getNcid() {
		return ncid;
	}


	public void setNcid(int ncid) {
		this.ncid = ncid;
	}

	

	public void setNcsid(int ncsid) {
		this.ncsid = ncsid;
	}

	

	public void setPage(Integer page) {
		this.page = page;
	}

	

	public List<Category> getcList() {
		return cList;
	}

	public void setcList(List<Category> cList) {
		this.cList = cList;
	}

	public Map<Integer, List<CategorySecond>> getsMap() {
		return sMap;
	}

	public void setsMap(Map<Integer, List<CategorySecond>> sMap) {
		this.sMap = sMap;
	}

	//注入ProductService 
	private ProductService productService;
	
	//注入CategorySecondService
	private CategorySecondService categorySecondService;
	
	//注入CategoryService 
	private CategoryService categoryService;
	
	
	
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	public void setCategorySecondService(CategorySecondService categorySecondService) {
		this.categorySecondService = categorySecondService;
	}
	

	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}

	public String index(){
	
		 return "index";
	}
	
	public String indexTop(){
		cList = categoryService.findAll();
		List<CategorySecond> sList ;
		 sMap = new HashMap<Integer, List<CategorySecond>>();
		
		for (int i = 0; i < cList.size(); i++) {
			sList =   categorySecondService.findByCid(cList.get(i).getCid());
			CategorySecond cs = new CategorySecond();
						cs.setCsid(-1);
						cs.setCsname("");
			sList.add(0,cs);
			//sList =  categorySecondService.findAll();
			sMap.put(cList.get(i).getCid(), sList);
		}
		
		ActionContext.getContext().getValueStack().set("cList", cList);
		ActionContext.getContext().getValueStack().set("sMap", sMap);
		 return "indexTop";
	}
	
	public String productList() {
		PageBean<Product> pageBean = productService.findByPageAndCsid(page ,ncsid , ncid);
		// 将PageBean数据存入到值栈中.
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "productList";
	}
	
	/*public String edit(){
		product = productService.findByPid(product.getPid());
		ActionContext.getContext().getValueStack().set("cList", cList);
		ActionContext.getContext().getValueStack().set("sMap", sMap);
		return "edit";
	}*/
	
	// 编辑商品的方法
		public String edit() {
			// 根据商品id查询商品信息
			product = productService.findByPid(product.getPid());
			// 查询所有二级分类
			List<CategorySecond> csList = categorySecondService.findAll();
			ActionContext.getContext().getValueStack().set("csList", csList);
			// 页面跳转到编辑页面:
			return "edit";
		}
	
/*	public String update(){
		save();
		return productList();
	}*/
	
	// 修改商品的方法
		public String update() throws IOException {
			/*if(categorySecond!=null)
			{
				System.out.println("testtest1"+categorySecond.getCsname()+","+categorySecond.getCsid()+"\n"+ncsid);
			}
			System.out.println("testtest2"+product.getCategorySecond().getCsname()+","+product.getCategorySecond().getCsid()+"\n"+ncsid);
			return productList();
		}
			
			String ss() throws IOException{*/
			// 将信息修改到数据库
			product.setPdate(new Date());
			System.out.println("ppppppp"+product.getPname());
			System.out.println(upload==null);
			
			// 上传:
			if(upload != null ){
				String delPath = ServletActionContext.getServletContext().getRealPath(
						"/" + product.getImage());
				File file = new File(delPath);
				file.delete();
				// 获得上传图片的服务器端路径.
				String path = ServletActionContext.getServletContext().getRealPath(
						"/products/2");
				uploadFileName =  MD5Util.getMD5String(new Date().toString())+uploadFileName ;
				/*File sourcefile = new File(path + "//" + uploadFileName);
				if(sourcefile.exists())
				{
					uploadFileName= uploadFileName+"_1";
				}*/
				// 创建文件类型对象:
				File diskFile = new File(path + "//" + uploadFileName);
				// 文件上传:
				FileUtils.copyFile(upload, diskFile);

				product.setImage("products/2/" + uploadFileName);
				upload =null;
			}
			productService.update(product);
			// 页面跳转
			//return "updateSuccess";
			return productList();
		}
		
		// 保存商品的方法:
		public String save() throws IOException {
			// 将提交的数据添加到数据库中.
			product.setPdate(new Date());
			// product.setImage(image);
			if(upload != null){
				// 将商品图片上传到服务器上.
				// 获得上传图片的服务器端路径.
				String path = ServletActionContext.getServletContext().getRealPath(
						"/products/2");
				uploadFileName =  MD5Util.getMD5String(new Date().toString()) +uploadFileName  ;
				/*File sourcefile = new File(path + "//" + uploadFileName);
				if(sourcefile.exists())
				{
					uploadFileName= uploadFileName+"_1";
				}*/
				
				// 创建文件类型对象:
				File diskFile = new File(path + "//" + uploadFileName);
				// 文件上传:
				FileUtils.copyFile(upload, diskFile);
		
				product.setImage("products/2/" + uploadFileName);
				upload =null;
			}
			productService.save(product);
			//return "saveSuccess";
			return productList();
		}

	
	/*public void save(){
		boolean b =  productService.save(product);
	}*/
	
	
	
	/**
	 * 删除
	 * @return productList()
	 */
/*	public String delete(){
	  boolean b = productService.delete(product);
	  return productList();
		
	}*/
	
	// 删除商品的方法:
		public String delete() {
			// 根据id查询商品信息
			product = productService.findByPid(product.getPid());
			// 删除商品的图片:
			String path = ServletActionContext.getServletContext().getRealPath(
					"/" + product.getImage());
			File file = new File(path);
			file.delete();
			// 删除数据库中商品记录:
			productService.delete(product);
			// 页面跳转
			return productList();
		}
	
	
	public String add_jump(){
		List<CategorySecond > csList = categorySecondService.findAll();
		ActionContext.getContext().getValueStack().set("csList",csList);
		return "add_jump";
	}
}
