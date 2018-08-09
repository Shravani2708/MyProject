package com.niit.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CartDAO;
import com.niit.dao.ProductDAO;
import com.niit.model.CartItem;
import com.niit.model.Product;



@Controller
public class CartController {
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	CartDAO cartDAO;
	
	 @RequestMapping(value="/cart/{productId}")
	 public String addCartItem(@RequestParam("quantity") String quantity,@PathVariable("productId") int productId,Principal principal,Model m)
	 {
	int qty=Integer.parseInt(quantity);
		 Product product=productDAO.getProduct(productId);
		String username= principal.getName();
		 
		
		 System.out.println(username);
		  CartItem cartItem=new CartItem();
		  cartItem.setProductID(product.getProductId());
		  cartItem.setProductName(product.getProductName());
		  cartItem.setQuantity(qty);
		  cartItem.setPrice(product.getPrice());
		  cartItem.setUsername(username);
		  cartItem.setStatus("NA");
		  
		  cartDAO.addCartItem(cartItem);
		  
		 List<CartItem> cartItems=cartDAO.showCartItem(username);
		  
		 m.addAttribute("cartItems", cartItems);
		 m.addAttribute("totalPurchaseAmount",this. calcTotalPurchaseAmount(cartItems));
		 System.out.println(cartItems.size());
		  
		  return "Cart";
		 
	 }
	 
	 @RequestMapping(value="/updateCartItem/{cartItemId}")
	 public String updateCartItem(@RequestParam("quantity") String quantity,@PathVariable("cartItemId") int cartItemId,Principal principal,Model m)
	 {
		 int qty=Integer.parseInt(quantity);
		 CartItem cartItem=cartDAO.getCartItem(cartItemId);
		 String username=principal.getName();
		 
		 cartItem.setQuantity(qty);
		 System.out.println("cartitems updated");
		 cartDAO.updateCartItem(cartItem);
		 
		 List<CartItem> cartItems=cartDAO.showCartItem(username);
		  
		  m.addAttribute("cartItems", cartItems);
		  m.addAttribute("totalPurchaseAmount",this. calcTotalPurchaseAmount(cartItems));
		  
		  return "Cart";
		 
		 
	 }
	 
	 @RequestMapping(value="/deleteCartItem/{cartItemId}")
	 public String deleteCartItem(@PathVariable("cartItemId") int cartItemId,Principal principal,Model m)
	 {
		 CartItem cartItem=cartDAO.getCartItem(cartItemId);
		 String username=principal.getName();
		 
		  System.out.println(username);
		 cartDAO.deleteCartItem(cartItem);
		 System.out.println("cartitems deleted");
		 List<CartItem> cartItems=cartDAO.showCartItem(username);
		  
		  m.addAttribute("cartItems", cartItems);
		  m.addAttribute("totalPurchaseAmount",this. calcTotalPurchaseAmount(cartItems));
		  System.out.println(cartItems.size());
		  return "Cart";
		 
		 
	 }
	 
	 @RequestMapping(value="/continueShopping")
	 public String continueShopping(Model m)
	 {
		 m.addAttribute("productList",productDAO.listProduct());
		 return "ProductDisplay";
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
