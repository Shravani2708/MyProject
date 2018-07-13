package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Category;

@Repository("categoryDAO")
@Transactional

public class CategoryDAOimpl implements CategoryDAO {

	
    @Autowired
    SessionFactory sessionFactory;

	//@Override
	public boolean addCategory(Category category) {
		try
		{
			sessionFactory.getCurrentSession().save(category);
			return true;
		}
		catch(Exception e)
		{
		return false;
		}
	}

	//@Override
	public boolean updateCategory(Category category) {
		try
		{
			sessionFactory.getCurrentSession().update(category);
			return true;
		}
		catch(Exception e)
		{
		return false;
		}
	}

	//@Override
	public boolean deleteCategory(Category category) {
		try
		{
			sessionFactory.getCurrentSession().delete(category);
			return true;
		}
		catch(Exception e)
		{
		return false;
		}
		
	}

	//@Override
	public Category getCategory(int categoryId) {
		try
		{
			Session session=sessionFactory.getCurrentSession();
			Category category=(Category)session.get(Category.class,categoryId);
			return category;
		}
		catch(Exception e)
		{
			return null;
		}
	}

	//@Override
	public List<Category> listCategories() {
		try
		{
			Session session=sessionFactory.getCurrentSession();
			Query query=session.createQuery("from Category");
			List<Category> listCategories=query.list();
			return listCategories;
		}
		catch(Exception e)
		{
			return null;
		}
	}

	
	

}
