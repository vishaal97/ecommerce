package Controller;
import java.io.FileOutputStream;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;


import ecommerce.com.model1.CategoryDAO;
import ecommerce.com.model.Category;
@Controller


public class CategoryController {
	@Autowired
	CategoryDAO categoryDAO;
	@ModelAttribute("addcategory")
	public Category getCategory()
	{
		return new Category();
	}
	@RequestMapping("/Categorydetails")
	public String getProductDetails(Model model,HttpServletRequest request)
	{
		
		java.util.List<Category> categorylist=categoryDAO.getAllCategorys();
		model.addAttribute("categorylist",categorylist);
		String id=request.getParameter("id");
		if(id!=null)
			
		{
			int pid=Integer.parseInt(id);
			Category p=categoryDAO.findCategory(pid);
           model.addAttribute("currcategory",p);   
           return "editcategory";
           
		}
		 
		 return "Categorydetails";
	}
	@RequestMapping(value="addcategory",method=RequestMethod.POST)
	public String addCategory(Category category)
	{
		categoryDAO.addCategory(category);
	
				
		
		return "redirect:Categorydetails";	
	}
	@RequestMapping(value="updatecategory",method=RequestMethod.POST)
	public String updateCategory(Category category)
	{
		int id=category.getId();
	   Category p=categoryDAO.findCategory(id);
	   p.setCategoryName(category.getCategoryName());
	   p.setDescription(category.getDescription());
	  

   
	   categoryDAO.updateCategory(p);
	return "redirect:Categorydetails";	
				
	}
 @RequestMapping("/deletecategory")
 public String deleteCategory(HttpServletRequest request)
 {
	 int id=Integer.parseInt(request.getParameter("id"));
    Category pr=categoryDAO.findCategory(id);
    categoryDAO.deleteCategory(pr);
    return "redirect:Categorydetails";
 }
}


	


