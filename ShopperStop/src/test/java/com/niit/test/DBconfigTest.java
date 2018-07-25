package com.niit.test;

import com.niit.dao.CategoryDAO;
import com.niit.model.Category;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class DBconfigTest {
	@Autowired
	private static CategoryDAO categoryDAO;
	public static void main(String[] args) {
	
		
		AnnotationConfigApplicationContext context= new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		
		categoryDAO=(CategoryDAO)context.getBean("categoryDAO");
		
		Category category = new Category();
		category.setCategoryName("Samsung S5");
		category.setCategoryDesc("Mobile");
		
		categoryDAO.addCategory(category);
		
		
		System.out.println("Category object");

	}

}
