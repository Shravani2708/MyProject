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
	 @Ignore
	@Test
	public void insertOrderDetailTest()
	{
		OrderDetail orderDetail=new OrderDetail();
		orderDetail.setUsername("suresh");
		orderDetail.setTotalPurchaseAmount(45000);
		orderDetail.setOrderDate(new java.util.Date());
		orderDetail.setPaymentMode("CC");
		
		
		assertTrue("problem in inserting orderDetails: ",orderDetailDAO.insertOrderDetail(orderDetail));
		
	}
	
     @Test
     public void updateOrderCartItemStatus()
     {
    	 
    	 assertTrue("problem in updating CartItems: ",orderDetailDAO.updateOrderDetail("suresh"));
 		 
     }
}
