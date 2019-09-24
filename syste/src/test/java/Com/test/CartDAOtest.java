package Com.test;
import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import ecommerce.com.model1.CartDAO;
import ecommerce.com.backend.SpringConfiguration;
import ecommerce.com.model.Cart;


public class CartDAOtest {
	public static ApplicationContext context;
	@BeforeClass
	public static void setConfiguration()
	{
		context=new AnnotationConfigApplicationContext(SpringConfiguration.class);
	}

	private CartDAO carimpl;
	
	@Test
	public void cartdaotest()
	{
		Cart obj=new Cart();
		obj.setEmail("peter@gmail.com");
		obj.setProductid(1);
		obj.setPrice(200);
		java.util.Date dt=new java.util.Date();
	String cartid=	dt.getDate()+":"+dt.getYear()+":"+dt.getMonth()+":"+obj.getEmail()+":"+obj.getProductid();
	obj.setCartid(cartid);
	CartDAO dao=(CartDAO)context.getBean("cartDAO");
	
	}

	@Test
	public void testDeleteCart() {
		fail("not yet implemented");
	}
	@Test
	public void testFindCart() {
		CartDAO carimpl=(CartDAO)context.getBean("cartDAO");
		 Cart c=carimpl.findCart(1);
		
		 }

	@Test
	public void testUpdateCart() {
		CartDAO carimpl=(CartDAO)context.getBean("cartDAO");
		Cart c=new Cart();
		c=carimpl.findCart(1);
	}

	@Test
	public void testGetAllCarts() {
		CartDAO carimpl=(CartDAO)context.getBean("cartDAO");
		java.util.List<Cart> list=carimpl.getAllCarts("cart");
		for(Cart c:list)
		{
			System.out.println(c.getId()+" "+c.getEmail()+" "+c.getProductid()+" "+c.getPrice()+" "+c.getCartid());
		}
	
	}
	

}


	

	




	

