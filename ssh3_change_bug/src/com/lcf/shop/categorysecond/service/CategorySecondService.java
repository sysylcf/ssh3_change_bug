package com.lcf.shop.categorysecond.service;

import java.util.List;

import com.lcf.shop.category.vo.Category;
import com.lcf.shop.categorysecond.dao.CategorySecondDao;
import com.lcf.shop.categorysecond.vo.CategorySecond;

public class CategorySecondService  {
	CategorySecondDao categorySecondDao;

	public void setCategorySecondDao(CategorySecondDao categorySecondDao) {
		this.categorySecondDao = categorySecondDao;
	}

	public List<CategorySecond> findAll() {
		
		List<CategorySecond> list =  categorySecondDao.findAll();
		return list;
	}

	public List<CategorySecond> findByCid(Integer cid) {
		List<CategorySecond> slist =  categorySecondDao.findByCid(cid);
		return slist;
	}
	
	public CategorySecond findByCsid(Integer csid) {
		CategorySecond slist =  categorySecondDao.findByCsid(csid);
		return slist;
	}

	public static void add(Category category) {
		// TODO Auto-generated method stub
		
	}

	public void save(CategorySecond categorySecond) {
		 categorySecondDao.save(categorySecond);
		
	}

	public boolean update(CategorySecond categorySecond) {
		   return categorySecondDao.update(categorySecond);
	}

	public boolean delete(CategorySecond categorySecond) {
		
		return categorySecondDao.delete(categorySecond);
	}

	
	
	
	
	

}
