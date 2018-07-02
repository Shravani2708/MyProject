package com.niit.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.SupplierDAO;
import com.niit.model.Supplier;

public class SupplierDAOTestCase {

	 static SupplierDAO  supplierDAO ;
     
     @BeforeClass
     public static void exeuteFirst()
     {
   	  AnnotationConfigApplicationContext context= new AnnotationConfigApplicationContext();
 		context.scan("com.niit");
 		context.refresh();
 		
 		supplierDAO=(SupplierDAO)context.getBean("supplierDAO");
 		
     }
     
    
     @Test
     public void addSupplierTest()
     {
   	  Supplier supplier = new Supplier();
   	  supplier.setSupplierName("jaggu1");
	  supplier.setSupplierAddr("Gao");
 		//assertEquals("Successfully added",true,supplierDAO.addSupplier(supplier));
 		assertTrue("problem in Adding Supplier: ",supplierDAO.addSupplier(supplier));
 		
     }
     
     @Ignore
     @Test
     public void updateSupplierTest()
     {
   	 Supplier supplier = supplierDAO.getSupplier(1);
   	 supplier.setSupplierName("Sam");
 	 supplier.setSupplierAddr("Bengaluru");
 		
 		assertTrue("problem in updating Supplier: ",supplierDAO.updateSupplier(supplier));
 		
     }
     
     @Ignore
     @Test
     public void deleteSupplierTest()
     {
   	  Supplier supplier = supplierDAO.getSupplier(2);
 		
 		assertTrue("problem in Deleting Supplier: ",supplierDAO.deleteSupplier(supplier));
 		
     }
     
     
     
     
     

}
