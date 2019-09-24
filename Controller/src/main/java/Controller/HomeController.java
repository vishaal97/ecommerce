package Controller;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ecommerce.com.model1.CartDAO;
import ecommerce.com.model1.ProductDAO;
import ecommerce.com.model.Product;

@Controller

public class HomeController {
	@Autowired 
	ProductDAO productDAO;
	@Autowired
	CartDAO cartDAO;
	@RequestMapping("/")
	public String getIndex()
	{
		return "Login";
	}
	@RequestMapping("/userhome")
	public String getHome(HttpSession session,Model model)
	{
		String username=SecurityContextHolder.getContext().getAuthentication().getName();
		session.setAttribute("username",username);
		java.util.List<Product> productlist=productDAO.getAllProducts();
    	 model.addAttribute("productlist", productlist);
    	 java.util.Date dt=new java.util.Date();
    	 String cartid = dt.getDate()+":"+dt.getYear()+":"+dt.getMonth()+username+"/";
    	 int size= cartDAO.totalelements("peter@gmail.com");
    	 System.out.println(size);
    	 model.addAttribute("cartsize", size);
    	 
		return "userhome";
	}
	@RequestMapping("/Login")
	public String getLogin()
	{
		return "Login";
	}
	@RequestMapping("/userdetails")
	public String getUserdetails()
	{
		return "userdetails";
	}
	@RequestMapping("/adminhome")
	public String getAdmin()
	{
		return "adminhome";
	}
	@RequestMapping("/product")
	public String getProduct()
	{
		return "product";
	}
	@RequestMapping("/supplier")
	public String getSupplier()
	{
		return "supplier";
	}
	@RequestMapping("/category")
	public String getCategory()
	{
		return "category";
	}
	@RequestMapping("/error")
	public String getError()
	{
		return "error";
	}
	
	
	
	@RequestMapping("/logout")
	public String getLogout(HttpSession session,Model m)
	{
		m.addAttribute("logoutstatus", true);
		m.addAttribute("logoutmessage", "logged out successfully");
		session.invalidate();
		return "Login";
	}
}
	