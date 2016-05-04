package com.lcf.shop.product.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.lcf.shop.product.dao.ProductDao;
import com.lcf.shop.product.vo.Product;
import com.lcf.shop.utils.PageBean;
/**
 * 商品的业务层代码
 *
 */
@Transactional
public class ProductService {
	// 注入ProductDao
	private ProductDao productDao;

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	// 首页上热门商品查询
	public List<Product> findHot() {
		return productDao.findHot();
	}

	// 首页上最新商品的查询
	public List<Product> findNew() {
		return productDao.findNew();
	}

	// 根据商品ID查询商品
	public Product findByPid(Integer pid) {
		return productDao.findByPid(pid);
	}

	// 根据一级分类的cid带有分页查询商品
	public PageBean<Product> findByPageCid(Integer cid, int page) {
		PageBean<Product> pageBean = new PageBean<Product>();
		// 设置当前页数:
		pageBean.setPage(page);
		// 设置每页显示记录数:
		int limit = 12;
		pageBean.setLimit(limit);
		//  设置总记录数:
		int totalCount = 0 ;
		totalCount = productDao.findCountCid(cid);
		pageBean.setTotalCount(totalCount);
		// 设置总页数:
		int totalPage = 0;
		// Math.ceil(totalCount / limit);
		if(totalCount % limit == 0){
			totalPage = totalCount / limit;
		}else{
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		// 每页显示的数据集合:
		// 从哪开始:
		int begin = (page - 1) * limit;
		List<Product> list = productDao.findByPageCid(cid,begin,limit);
		pageBean.setList(list);
		return pageBean;
	}

	// 根据二级分类查询商品信息
	public PageBean<Product> findByPageCsid(Integer csid, int page) {
		PageBean<Product> pageBean = new PageBean<Product>();
		// 设置当前页数:
		pageBean.setPage(page);
		// 设置每页显示记录数:
		int limit = 12;
		pageBean.setLimit(limit);
		//  设置总记录数:
		int totalCount = 0 ;
		totalCount = productDao.findCountCsid(csid);
		pageBean.setTotalCount(totalCount);
		// 设置总页数:
		int totalPage = 0;
		// Math.ceil(totalCount / limit);
		if(totalCount % limit == 0){
			totalPage = totalCount / limit;
		}else{
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		// 每页显示的数据集合:
		// 从哪开始:
		int begin = (page - 1) * limit;
		List<Product> list = productDao.findByPageCsid(csid,begin,limit);
		pageBean.setList(list);
		return pageBean;
	}

	// 根据二级分类查询商品信息
		public PageBean<Product> findByPageString(String seachString, int page) {
			PageBean<Product> pageBean = new PageBean<Product>();
			// 设置当前页数:
			pageBean.setPage(page);
			// 设置每页显示记录数:
			int limit = 12;
			pageBean.setLimit(limit);
			//  设置总记录数:
			int totalCount = 0 ;
			totalCount = productDao.findCountString(seachString);
			System.out.println("totalCount"+totalCount);
			pageBean.setTotalCount(totalCount);
			// 设置总页数:
			int totalPage = 0;
			// Math.ceil(totalCount / limit);
			if(totalCount % limit == 0){
				totalPage = totalCount / limit;
			}else{
				totalPage = totalCount / limit + 1;
			}
			pageBean.setTotalPage(totalPage);
			// 每页显示的数据集合:
			// 从哪开始:
			int begin = (page - 1) * limit;
			List<Product> list = productDao.findByPageString(seachString,begin,limit);
			pageBean.setList(list);
			return pageBean;
		}
	public PageBean<Product> findByPageAndCsid(Integer page, int csid ,int cid) {
		 PageBean<Product> pageBean = new PageBean<Product>(); 
		pageBean.setPage(page);
		
		int limit =6;
		pageBean.setLimit(limit);
		//总记录
		int totalCount =0;
		if(csid !=-1)
		{
			 totalCount = productDao.findCountCsid(csid);
		}
		
		else{
			totalCount = productDao.findCountCid(cid);
		}
		
         pageBean.setTotalCount(totalCount);
         //页数
         int totalPage =0;
		 totalPage = totalCount %limit ==0 ?totalCount/limit :totalCount/limit +1;
		 pageBean.setTotalPage(totalPage);
		 
		 int begin = (page -1)*limit;
		 List<Product>  list =null;
		 if(csid != -1)
		 {
			 list = productDao.findByPageCsid(csid, begin, limit); 
		 }
		 else 
		 {
			 list = productDao.findByPageCid(cid, begin, limit);
		 }
		 pageBean.setList(list);
		return pageBean;
	}

	public boolean save(Product product) {
		  
		return productDao.save(product);
	}

	public boolean delete(Product product) {
		
		return productDao.delete(product);
	}
	
	// 业务层修改商品的方法
		public void update(Product product) {
			productDao.update(product);
		}
	
}
