package com.niit.controller;



import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.dao.CategoryDAO;
import com.niit.dao.ProductDAO;
import com.niit.model.Category;
import com.niit.model.Product;



@Controller
public class ProductController {
	
	
	@Autowired
	ProductDAO productDAO;
	@Autowired
	CategoryDAO categoryDAO;
	
	@RequestMapping("/product")
	public String showProductPage(Model m) 
	{
		Product product=new Product();
		m.addAttribute(product);
		m.addAttribute("categoryList", this.getCategories());
		m.addAttribute("productList",productDAO.listProduct());
		return "ManageProduct";
		
	}
	
	@RequestMapping(value="/ProductInsert",method=RequestMethod.POST)
	public String insertProduct(@ModelAttribute("product") Product product,Model m)
	{
		
		productDAO.addProduct(product);
		m.addAttribute("categoryList", this.getCategories());
		
		Product product1=new Product();
		m.addAttribute(product1);
		m.addAttribute("productList",productDAO.listProduct());
		System.out.println("Product Added");
		return "ManageProduct";
	}
	
	@RequestMapping(value="/deleteProduct/{productId}")
	public String deleteProduct(@PathVariable("productId") int productId,Model m)
	{
		Product product=productDAO.getProduct(productId);
		productDAO.deleteProduct(product);
		
		Product product1=new Product();
		m.addAttribute(product1);
		m.addAttribute("categoryList", this.getCategories());
		m.addAttribute("productList",productDAO.listProduct());
		
		return "ManageProduct";
	    
	}
	
	
	public LinkedHashMap <Integer,String> getCategories()
	{
		List<Category> listCategories=categoryDAO.listCategories();
		LinkedHashMap<Integer,String> categoryData=new LinkedHashMap<Integer,String>();
		for(Category category:listCategories)
		{
			categoryData.put(category.getCategoryId(),category.getCategoryName());
		}
		return categoryData;
	}
		
	}


