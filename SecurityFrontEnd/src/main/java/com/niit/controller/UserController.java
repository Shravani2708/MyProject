package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.ProductDAO;
import com.niit.dao.UserDAO;
import com.niit.model.UserDetail;

@Controller

public class UserController {
	
	@Autowired
	UserDAO userDAO;
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	 public String addRegister(@RequestParam("username")String UserName,@RequestParam ("password")String password,
			                   @RequestParam ("address")String address,@RequestParam ("email")String email,
	                           @RequestParam ("phoneNo")String mobileNo) {
	    
	    UserDetail userDetail =new UserDetail();
	    userDetail.setUsername(UserName) ;
	    userDetail.setPassword(password) ;
	    userDetail.setAddress(address);
	    userDetail.setEmail(email);
	    userDetail.setPhoneNo(mobileNo);
	    
	    userDetail.setRole("ROLE_USER");
	    userDetail.setEnabled(true);
	    
	   userDAO.registerUserDetail(userDetail);
	   System.out.println("registered Successfully");
	   return "home";
	   
	   
	     
	   
	    
	}

}
