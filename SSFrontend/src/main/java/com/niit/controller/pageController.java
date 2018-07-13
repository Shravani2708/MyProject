package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class pageController {
	
	@RequestMapping(value="/")
    public String showRootPage()
    {
		return "index";
    }
	
	@RequestMapping(value="/home")
    public String showrootPage()
    {
		return "index";
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

	

}
