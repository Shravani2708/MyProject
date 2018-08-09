package com.niit.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class pageController {
	
	@RequestMapping(value="/")
    public String showRootPage()
    {
		return "home";
    }
	
	@RequestMapping(value="/home")
    public String showrootPage()
    {
		return "home";
    }

	
	@RequestMapping(value="/login")
     public String showLoginPage()
     {
		return "Login";
		
     }
	
	@RequestMapping(value="/register")
    public String showRegisterPage()
    {
		return "Register";
    }
	
	@RequestMapping(value="/contactus")
    public String showContactUsPage()
    {
		return "ContactUs";
    }
	
	@RequestMapping(value="/aboutus")
    public String showAboutUsPage()
    {
		return "AboutUs";
    }
	
	@RequestMapping(value="/cart")
    public String showCartPage()
    {
		return "Cart";
    }
	
	
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public String accessDenied(Model model, Principal principal) {
	     
	    if (principal != null) {
	        model.addAttribute("message", "Hi " + principal.getName()
	                + "<br> You do not have permission to access this page!");
	    } else {
	        model.addAttribute("msg",
	                "You do not have permission to access this page!");
	    }
	    return "403Page";
	}
	
	@RequestMapping(value="/logoutSuccess", method = RequestMethod.GET)
	public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
	    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null){    
	        new SecurityContextLogoutHandler().logout(request, response, auth);
	    }
	    return "home";
	}
	 

	}
	
	
	



