package com.niit.test;

import static org.junit.Assert.*;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.ProductDAO;
import com.niit.model.Product;
import com.niit.model.Supplier;



public class ProductDAOTestCase {

	static ProductDAO  productDAO ;
    
    @BeforeClass
    public static void exeuteFirst()
    {
  	  AnnotationConfigApplicationContext context= new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		
		productDAO=(ProductDAO)context.getBean("productDAO");
		
    }
    @Ignore
    @Test
    public void addProductTest()
    {
    	 Product product =new Product();
    	 product.setProductName("samsung galaxy");
    	 product.setProductDesc("samsung with 4G ");
    	 product.setPrice(13000);
    	 product.setStock(20);
    	 product.setCategoryId(1);
    	 product.setSupplierId(1);
    	 
    	 
    	 assertTrue("problem in Adding Product: ",productDAO.addProduct(product));
    }
   
    @Test
    public void updateProductTest()
    {
    	Product product = productDAO.getProduct(596);
    	product.setProductName("Lenovo Yoga");
    	product.setProductDesc("360 rotatable");
    	product.setPrice(34000);
    	product.setStock(2);
    	product.setCategoryId(204);
    	product.setSupplierId(1);
		
		assertTrue("problem in updating product: ",productDAO.updateProduct(product));
		
    }
    
    

}
