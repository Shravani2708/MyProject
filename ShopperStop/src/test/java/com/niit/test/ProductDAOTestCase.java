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
    
    @Test
    public void addProductTest()
    {
    	 Product product =new Product();
    	 product.setProductName("samsung j7");
    	 product.setProductDesc("samsung with 4G ");
    	 product.setPrice(13000);
    	 product.setStock(20);
    	 product.setCategoryId(1);
    	 product.setSupplierId(1);
    	 
    	 
    	 assertTrue("problem in Adding Product: ",productDAO.addProduct(product));
    }
    @Ignore
    @Test
    public void updateProductTest()
    {
    	Product product = productDAO.getProduct(1);
    	product.setProductName("Sam");
    	product.setProductDesc("Bengaluru");
    	product.setPrice(14000);
    	product.setStock(10);
    	product.setCategoryId(2);
    	product.setSupplierId(2);
		
		assertTrue("problem in updating product: ",productDAO.updateProduct(product));
		
    }
    
    

}
