package com.lcf.shop.categorysecond.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.lcf.shop.category.vo.Category;
import com.lcf.shop.categorysecond.vo.CategorySecond;
import com.opensymphony.xwork2.config.Configuration;

public class CategorySecondDao  extends HibernateDaoSupport{

	public List<CategorySecond> findAll() {
		   String hql="from CategorySecond ";
		  List<CategorySecond> list= this.getHibernateTemplate().find(hql);
		  return list;
	

}

	public List<CategorySecond> findByCid(Integer cid) {
		String hql="from CategorySecond where cid = ?";
		
		List<CategorySecond> sList =  (List<CategorySecond>) this.getHibernateTemplate().find(hql,cid);
		
		/* String hql="form CategorySecond ";
		List<CategorySecond> slist= this.getHibernateTemplate().find(hql);
		System.out.println("slist"+slist.get(0).getCsname());*/
		//return slist;
		return sList;
	}

	public void save(CategorySecond categorySecond) {
	
		this.getHibernateTemplate().save(categorySecond);
		
	}

	public CategorySecond findByCsid(Integer csid) {
		String hql="form CategorySecond where Csid = ?";
		return this.getHibernateTemplate().get(CategorySecond.class, csid);
		
	}

	public boolean  update(CategorySecond categorySecond) {
		this.getHibernateTemplate().update(categorySecond);
		return true;
	}

	public boolean delete(CategorySecond categorySecond) {
		  this.getHibernateTemplate().delete(categorySecond);
		return true;
	}
}