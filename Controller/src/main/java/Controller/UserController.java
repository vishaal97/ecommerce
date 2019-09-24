package Controller;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ecommerce.com.model1.UserDAO;
import ecommerce.com.model.Product;
import ecommerce.com.model.Supplier;
import ecommerce.com.model.User;

@Controller

public class UserController {
	@Autowired
	UserDAO userDAO;

	@RequestMapping(value="addUser",method=RequestMethod.POST)
	public String addUser(User user)
	{
		userDAO.addUser(user);
		return "Login";
	}

}


