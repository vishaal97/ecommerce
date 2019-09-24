package Controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ecommerce.com.model.Cart;
import ecommerce.com.model1.CartDAO;
import ecommerce.com.model.Payment;
import ecommerce.com.model1.PaymentDAO;
import ecommerce.com.model1.ProductDAO;
import ecommerce.com.model1.SupplierDAO;

@Controller

public class InvoiceController {
	@Autowired
	CartDAO cartDAO;
	@Autowired
	ProductDAO productDAO;
	@Autowired
	SupplierDAO supplierDAO;
	@Autowired
	PaymentDAO paymentDAO;
	 @RequestMapping("/invoice")
	 public String viewCart(HttpSession session,Model model,HttpServletRequest request)
	   {
		  String email=(String)session.getAttribute("email");
		   java.util.Date dt=new java.util.Date();
		   String cartid=	dt.getDate()+":"+dt.getYear()+":"+dt.getMonth()+email+"/";
				   java.util.List<Cart> cartlist=cartDAO.getAllCarts("cartid");
				   float sum=0;
				   for(Cart c:cartlist)
				   {
					   sum=sum+c.getPrice();
				   }
	           model.addAttribute("cartlist",cartlist);
		     model.addAttribute("carttotal",sum);
	   
	   java.util.List<Payment> productlist=paymentDAO.getAllPayments(cartid);
	   model.addAttribute("productlist", productlist);
	   String id=request.getParameter("id");
	   java.util.List<Payment> supplierlist=paymentDAO.getAllPayments(cartid);
	   model.addAttribute("paymentlist", supplierlist);
	   //model.addAttribute("cartsize",cartlist.size());
	 return "invoice";
	 }


	}


