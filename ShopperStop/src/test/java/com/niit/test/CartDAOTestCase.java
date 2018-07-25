package com.niit.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.CartDAO;
import com.niit.dao.CategoryDAO;
import com.niit.model.CartItem;
import com.niit.model.Category;

public class CartDAOTestCase {

	static CartDAO cartDAO;
	
	@BeforeClass
	 public static void exeuteFirst()
    {
  	  AnnotationConfigApplicationContext context= new AnnotationConfigApplicationContext();//it is an interface to access spring frameworks
		context.scan("com.niit");
		context.refresh();
		
		cartDAO=(CartDAO)context.getBean("cartDAO");//calling obj of getBean method interface just to request spring fw to create and return an obj with a bean name categoryDAO
		
    }
	
	@Test
    public void addCartTest()
    {
  	  CartItem cartItem=new CartItem();
  	  cartItem.setProductID(4);
  	  cartItem.setProductName("Samsungj7");
  	  cartItem.setQuantity(20);
    	cartItem.setUsername("Suresh");
  	  cartItem.setPrice(12000);
  	  cartItem.setStatus("NA");
		
		assertTrue("problem in Adding CartItem: ",cartDAO.addCartItem(cartItem));
		
    }
	
	
	@Ignore
	@Test
	public void showCartItemTestCase()
	{
		List<CartItem> cartItems=cartDAO.showCartItem("suresh");
		
		assertTrue("problem in showing CartItem: ",cartItems.size()>0);
		
		for(CartItem cartItem: cartItems)
		{
			System.out.println(cartItem.getProductName()+":::");
			System.out.println(cartItem.getQuantity()+":::");
			System.out.println(cartItem.getPrice()+":::");
		    System.out.println(cartItem.getStatus()+":::");
		}
	
}
	
	@Ignore
  @Test
  public void getCartItemTestCase()
  {
	  CartItem cartItem=cartDAO.getCartItem(15);
	  
	  assertNotNull("problem in getting CartItem: ",cartItem);
	  System.out.println("====Getting a cartitem=====");
	  System.out.println(cartItem.getProductName()+":::");
		System.out.println(cartItem.getQuantity()+":::");
		System.out.println(cartItem.getPrice()+":::");
	    System.out.println(cartItem.getStatus()+":::");
  }
	
	@Ignore
  @Test
  public void deleteCartItemTestCase()
  {
	  CartItem cartItem=cartDAO.getCartItem(15);
	  assertTrue("problem in Adding CartItem: ",cartDAO.deleteCartItem(cartItem));
	  
  }
	
  @Ignore
  @Test
  public void updateCartItemTestCase()
  {
	  CartItem cartItem=cartDAO.getCartItem(4);
	  cartItem.setQuantity(2);
	  
	  
  
  
  
}
}


