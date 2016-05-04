package com.lcf.shop.category.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.lcf.shop.category.vo.Category;

/**
 * 一级分类的持久层对象
 *
 */
public class CategoryDao extends HibernateDaoSupport{

	//DAO层的查询所有一级分类的方法

	public List<Category> findAll() {
		String hql = "from Category";
		List<Category> list = this.getHibernateTemplate().find(hql);
		return list;
	}

	public boolean delete(Category category) {
		this.getHibernateTemplate().delete(category);
		
		return true;
	}

	public void save(Category category) {
		this.getHibernateTemplate().save(category);
		
	}

	public void updata(Category category) {
		 this.getHibernateTemplate().update(category);
		
	}

	public Category findByCid(Integer cid) {
		
		String hql ="from Category where cid= ?";
		List<Category> list =  this.getHibernateTemplate().find(hql, cid);
		Category category = list.get(0);
		return category;
	}
	
}
