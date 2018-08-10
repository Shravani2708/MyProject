package com.niit.test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.UserDAO;
import com.niit.model.UserDetail;


public class UserDetailDAOTestCase {
	
static UserDAO userDAO ;
	
	@BeforeClass
	public static void configure()
	{
		AnnotationConfigApplicationContext context= new AnnotationConfigApplicationContext();//it is an interface to access spring frameworks
  		context.scan("com.niit");
  		context.refresh();
  		
  		userDAO=(UserDAO)context.getBean("userDAO");
	}
	 
	@Test
	public void registerUserDetailTest()
	{
		UserDetail userDetail=new UserDetail();
		userDetail.setUsername("shravs");
		userDetail.setPassword("12345");
		userDetail.setAddress("Calicut");
		userDetail.setEmail("shravs@gmail.com");
		userDetail.setPhoneNo("8901234556");
		userDetail.setRole("ROLE_ADMIN");
		userDetail.setEnabled(true);
		
		
		assertTrue("problem in registering userDetails: ",userDAO.registerUserDetail(userDetail));
		
	}
	@Ignore
     @Test
     public void updateUserDetailTest()
     {
    	 UserDetail userDetail=userDAO.getUserDetail("suresh");
    
 		userDetail.setPassword("pass123");
 		userDetail.setEnabled(true);
    	 assertTrue("problem in updating CartItems: ",userDAO.updateUserDetail(userDetail));
 		 
     }
	/* @Ignore
     @Test
     public void getUserDetailTest() 
     {
    	 UserDetail userDetail=new UserDetail();
    	 userDetail=userDAO.getUserDetail("suresh");
    	 assertEquals("pass",userDetail.getPassword());
    	 
    	 
     }*/
}



