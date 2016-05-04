package com.lcf.shop.category.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.lcf.shop.category.dao.CategoryDao;
import com.lcf.shop.category.vo.Category;

/**
 * 一级分类的业务层对象
 *
 */
@Transactional
public class CategoryService {
	
	// 注入CategoryDao
	private CategoryDao categoryDao;

	public void setCategoryDao(CategoryDao categoryDao) {
		this.categoryDao = categoryDao;
	}
		
	
	// 业务层查询所有一级分类的方法
	public List<Category> findAll() {
		return categoryDao.findAll();
	}

	public boolean delete(Category category) {
		 boolean b= categoryDao.delete(category);
		return b;
	}


	public boolean save(Category category) {
		categoryDao.save(category);
		return false;
	}


	public void update(Category category) {
		   categoryDao.updata(category);
		
	}


	public Category findByCid(Integer cid) {
		Category category = categoryDao.findByCid(cid);
		return category;
	}
	
	
	
}
