package com.niit.controller;



import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.LinkedHashMap;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.niit.dao.CategoryDAO;
import com.niit.dao.ProductDAO;
import com.niit.dao.SupplierDAO;
import com.niit.model.Category;
import com.niit.model.Product;



@Controller
public class ProductController {
	
	
	@Autowired
	ProductDAO productDAO;
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	SupplierDAO supplierDAO;
	boolean flag=false;
	
	
	 private static final String UPLOAD_DIRECTORY ="/WEB-INF/images";  
	@RequestMapping("/product")
	public String showProductPage(Model m) 
	{
		flag=false;
		System.out.println("product page");
		Product product=new Product();
		m.addAttribute(product);
		m.addAttribute("categoryList", this.getCategories());
		m.addAttribute("productList",productDAO.listProduct());
		return "ManageProduct";
		
	}
	
	@RequestMapping("/totalProductInfo/{productId}")
	public String showTotalProductDisplay(@PathVariable("productId") int productId,Model m)
	{
		Product product=productDAO.getProduct(productId);
		m.addAttribute("product",product);
		return  "TotalProductDisplay";
	}
	
	
	@RequestMapping("/productDisplay")
	public String productDisplay(Model m)
	{
		m.addAttribute("productList", productDAO.listProduct());
		return "ProductDisplay";
		
	}
	
	@RequestMapping(value="/ProductInsert",method=RequestMethod.POST)
	public String insertProduct(@ModelAttribute("product") Product product,HttpSession session,@RequestParam("pimage")CommonsMultipartFile imageFile,Model m)
	{
		System.out.println("product insert");
		productDAO.addProduct(product);
		m.addAttribute("categoryList", this.getCategories());
		
		Product product1=new Product();
		m.addAttribute(product1);
		
		//Multipart File uploading code-->
		
        ServletContext context=session.getServletContext();
		
		String path = context.getRealPath(UPLOAD_DIRECTORY);  
        path=path+File.separator+product.getProductId()+".jpg";
		
		File file=new File(path);
		System.out.println(path);
		
		if(!imageFile.isEmpty())
		{
			try
			{
				byte[] buffer=imageFile.getBytes();
				FileOutputStream fos= new FileOutputStream(file);
				BufferedOutputStream bs= new BufferedOutputStream(fos);
				bs.write(buffer);
				bs.close();
				
			}
			catch(Exception e)
			{
				System.out.println("Exception Arised"+e);
			}
		}
		else
		{
			m.addAttribute("Error Info","There is a system Problem No Image insertion ");
		}
		
		
       //end of Multipart File Uploading
		
		
		m.addAttribute("categoryList", this.getCategories());
		
		m.addAttribute("productList",productDAO.listProduct());
		System.out.println("Product Added");
		return "ManageProduct";
	}
	
	@RequestMapping(value="/deleteProduct/{productId}")
	public String deleteProduct(@PathVariable("productId") int productId,Model m)
	{
		flag=false;
		Product product=productDAO.getProduct(productId);
		productDAO.deleteProduct(product);
		
		Product product1=new Product();
		m.addAttribute(product1);
		m.addAttribute("categoryList", this.getCategories());
		m.addAttribute("productList",productDAO.listProducts());
		
		return "ManageProduct";
	    
	}
	@RequestMapping(value="/updateProduct/{productId}")
	public String updateProduct(@RequestParam("productId")int productId,@RequestParam("productDesc") String productDesc,@RequestParam("price")int price,@RequestParam("productName")String productName, Model m,@RequestParam("stock") int stock)
	{
		Product product=productDAO.getProduct(productId);
		product.setProductDesc(productDesc);
		product.setPrice(price);
		product.setProductName(productName);
		product.setStock(stock);
		productDAO.updateProduct(product);
		
		Product product1=new Product();
		m.addAttribute(product1);
		m.addAttribute("categoryList", this.getCategories());
		m.addAttribute("productList",productDAO.listProducts());
		System.out.println("Product Edited");
		return "ManageProduct";
		
	}
	@RequestMapping(value="/editProduct/{productId}")
	   public String editproduct(@PathVariable("productId") int productId,Model m)
	{
	  flag=true;
	  System.out.println("edit initiated");
	  Product product=productDAO.getProduct(productId);
	  m.addAttribute("productData", product);
	  m.addAttribute("flag", flag);
	  return "ManageProduct";
	}
	
	/*@RequestMapping(value="/deleteProduct/{productId}")
	public String deleteProduct(@PathVariable("productId") int productId,Model m)
	{
		
		Product product=productDAO.getProduct(productId);
		productDAO.deleteProduct(product);
		Product product1=new Product();
	    m.addAttribute(product1);
		m.addAttribute("categoryList", this.getCategories());
		m.addAttribute("productList",productDAO.listProduct());
		System.out.println("product deleted");
		
		return "ManageProduct";
	    
	}
	
	@RequestMapping(value="/editProduct/{productId}")
	public String updateProduct(@PathVariable("productId") int productId,Model m)
	{
		Product product=productDAO.getProduct(productId);
	    productDAO.updateProduct(product);
		
		//Product product1=new Product();
	//	m.addAttribute(product1);
		m.addAttribute("categoryList", this.getCategories());
		m.addAttribute("productList",productDAO.listProduct());
		System.out.println("updated product");
		
		return "ManageProduct";
	    
	}
	*/
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


