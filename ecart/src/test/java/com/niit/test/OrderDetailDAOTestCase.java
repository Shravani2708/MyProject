package com.niit.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.CategoryDAO;
import com.niit.dao.OrderDetailDAO;
import com.niit.model.OrderDetail;

public class OrderDetailDAOTestCase {

	static OrderDetailDAO orderDetailDAO ;
	
	@BeforeClass
	public static void configure()
	{
		AnnotationConfigApplicationContext context= new AnnotationConfigApplicationContext();//it is an interface to access spring frameworks
  		context.scan("com.niit");
  		context.refresh();
  		
  		orderDetailDAO=(OrderDetailDAO)context.getBean("orderDetailDAO");
	}
	
	@Test
	public void insertOrderDetailTest()
	{
		OrderDetail orderDetail=new OrderDetail();
		orderDetail.setUsername("vibha");
		orderDetail.setTotalPurchaseAmount(25000);
		orderDetail.setOrderDate(new java.util.Date());
		orderDetail.setPaymentMode("COD");
		
		
		assertTrue("problem in inserting orderDetails: ",orderDetailDAO.insertOrderDetail(orderDetail));
		
	}
	 @Ignore
     @Test
     public void updateOrderCartItemStatus()
     {
    	 
    	 assertTrue("problem in updating CartItems: ",orderDetailDAO.updateOrderDetail("suresh"));
 		 
     }
}
