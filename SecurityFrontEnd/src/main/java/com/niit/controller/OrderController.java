package com.niit.controller;


import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CartDAO;
import com.niit.dao.OrderDetailDAO;
import com.niit.model.CartItem;
import com.niit.model.OrderDetail;




@Controller
public class OrderController {
	
	@Autowired
	CartDAO cartDAO;
	@Autowired
	OrderDetailDAO orderDetailDAO;
	

	@RequestMapping(value="/checkout")
	public String checkOutProcess(Model m,Principal principal)
	{
		String username=principal.getName();
		 List<CartItem> cartItems=cartDAO.showCartItem(username);
		  
		  m.addAttribute("cartItems", cartItems);
		  m.addAttribute("totalPurchaseAmount",this. calcTotalPurchaseAmount(cartItems));
		  
		  return "MyOrder";
		
	}
	
	@RequestMapping(value="/payment")
	public String paymentProcess(Model m,Principal principal)
	{
		String username=principal.getName();
		
		List<CartItem> cartItems=cartDAO.showCartItem(username);
		m.addAttribute("cartItem", cartItems);
		int totalPurchaseAmount=this.calcTotalPurchaseAmount(cartItems);
		m.addAttribute("totalPurchaseAmount",totalPurchaseAmount);
		  System.out.println("payment page displayed");
		 return "Payment";
		
	}
	
	@RequestMapping(value="/paymentProcess",method=RequestMethod.POST)
	public String paymentProcessing(@RequestParam("paymenttype")String paymode,Model m,Principal principal )
	{  
		
		
		System.out.println("receipt page intiated");
		String username=principal.getName();
		OrderDetail orderDetail1=orderDetailDAO.getOrderDetail(username);
		List<CartItem> cartItems=cartDAO.showCartItem(username);
		m.addAttribute("cartItem", cartItems);
		int totalPurchaseAmount=this.calcTotalPurchaseAmount(cartItems);
		m.addAttribute("totalPurchaseAmount",totalPurchaseAmount);
		
		/*OrderDetail order=orderDetailDAO.getOrderDetail(username);
		m.addAttribute("OrderData",order);*/
		
		OrderDetail orderDetail=new OrderDetail();
		orderDetail.setPaymentMode(paymode);
		orderDetail.setUsername(username);
		orderDetail.setTotalPurchaseAmount(totalPurchaseAmount);
		orderDetail.setOrderDate(new java.util.Date());
		
		orderDetailDAO.insertOrderDetail(orderDetail);
		System.out.println(new java.util.Date());
		System.out.println("Receipt page displayed");
		
		
		

		
		return "Receipt";
		
	}
	 public int calcTotalPurchaseAmount(List<CartItem> cartItems)
	 {
		 int totalPurchaseAmount=0;
		  int count=0;
		  
		  while(count<cartItems.size())
		  {
			  CartItem cartItem=cartItems.get(count);
			  totalPurchaseAmount=totalPurchaseAmount+(cartItem.getQuantity()*cartItem.getPrice());
			  count++;
		  }
		 return totalPurchaseAmount;
		  }
	
	
}
