package com.niit.controller;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CategoryDAO;
import com.niit.model.Category;

@Controller
public class CategoryController{
@Autowired
CategoryDAO  categoryDAO;
boolean flag=false;

 @RequestMapping(value="/category")
public String showCategoryPage(Model  m)
{
flag=false;
List<Category> listCategories=categoryDAO.listCategories();
 m.addAttribute("categorylist", listCategories);
 m.addAttribute("flag",flag);
return "Category";
}
 @RequestMapping(value="/Insertcategory", method=RequestMethod.POST)
 public String insertcategory(@RequestParam("catname")String categoryName,@RequestParam ("catdesc")String categoryDesc,Model m)
{
    flag=false;
    Category category =new Category();
    category.setCategoryName(categoryName) ;
    category.setCategoryDesc(categoryDesc) ;
     
    categoryDAO.addCategory(category);
    List<Category> listCategories=categoryDAO.listCategories();
    m.addAttribute("categorylist", listCategories);
    return "Category";
    
}
 @RequestMapping(value="/deletecategory/{categoryID}")
public String deletecategory(@PathVariable("categoryID") int categoryId,Model m)
{
    flag=false;
    Category category=categoryDAO.getCategory(categoryId);
    categoryDAO.deleteCategory(category);
    
    List<Category> listCategories=categoryDAO.listCategories();
    m.addAttribute("categorylist", listCategories);
    return "Category";
}
   @RequestMapping(value="/editcategory/{categoryID}")
   public String editcategory(@PathVariable("categoryID") int categoryId,Model m)
{
     flag=true;
    Category category=categoryDAO.getCategory(categoryId);
     m.addAttribute("categoryData", category);
      return "Category";
}
}



