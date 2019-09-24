package Controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ecommerce.com.model1.CartDAO;
import ecommerce.com.model1.PaymentDAO;
import ecommerce.com.model.Cart;
import ecommerce.com.model.Payment;

@Controller
public class PaymentController {
	@Autowired
	PaymentDAO paymentDAO;
	@Autowired
	CartDAO cartDAO;
	

	  @RequestMapping("/payment")
	   public String viewCart(HttpSession session,Model model)
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
		   return "payment";
	   }
	  
	
	
	  @RequestMapping(value="add",method=RequestMethod.POST)
		public String addPayment(Payment payment,HttpSession session)
		{
		  String email=(String)session.getAttribute("email");
		   java.util.Date dt=new java.util.Date();
		   String cartid=	dt.getDate()+":"+dt.getYear()+":"+dt.getMonth()+email+"/";
		   payment.setCartid(cartid);
		   paymentDAO.addPayment(payment);
		   return "redirect:invoice";
		}


	   }



