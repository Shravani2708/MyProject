package com.niit.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.CategoryDAO;
import com.niit.model.Category;

public class CategoryDAOTestCase {
	
      static CategoryDAO  categoryDAO ;
      
      @BeforeClass
      public static void exeuteFirst()
      {
    	  AnnotationConfigApplicationContext context= new AnnotationConfigApplicationContext();//it is an interface to access spring frameworks
  		context.scan("com.niit");
  		context.refresh();
  		
  		categoryDAO=(CategoryDAO)context.getBean("categoryDAO");//calling obj of getBean method interface just to request spring fw to create and return an obj with a bean name categoryDAO
  		
      }
      
     
      @Test
      public void addCategoryTest()
      {
    	  Category category = new Category();
  		category.setCategoryName("Lenovo X1");
  		category.setCategoryDesc("Lenovo Mobiles");
  		
  		assertTrue("problem in Adding Category: ",categoryDAO.addCategory(category));
  		
      }
      
      @Ignore
      @Test
      public void updateCategoryTest()
      {
    	 Category category = categoryDAO.getCategory(1);
    	category.setCategoryName("Samsung");
  		category.setCategoryDesc("Samsung with 3G feature");
  		
  		assertTrue("problem in updating Category: ",categoryDAO.updateCategory(category));
  		
      }
      
      @Ignore
      @Test
      public void deleteCategoryTest()
      {
    	  Category category = categoryDAO.getCategory(4);
  		
  		assertTrue("problem in Deleting Category: ",categoryDAO.deleteCategory(category));
  		
      }
      
      
      
      
      
	

}
