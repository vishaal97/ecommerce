package Com.test;

import static org.junit.Assert.*;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import ecommerce.com.model1.ProductDAO;
import ecommerce.com.backend.SpringConfiguration;
import ecommerce.com.model.Product;


public class ProductDAOtest {
	public static ApplicationContext context;
	@BeforeClass
	public static void setConfiguration()
	{
		context=new AnnotationConfigApplicationContext(SpringConfiguration.class);
	}
	

	@Ignore
	public void testAddProduct() {
		Product p=new Product();
		p.setProductName("Coffee");
		p.setPrice(200);
		p.setQuantity(340);
		p.setCategoryid(1);
		p.setSupplierid(1);
		ProductDAO dao=(ProductDAO)context.getBean("productDAO");
 	
	}

	@Test
	public void testDeleteProduct() {
		fail("not yet implemented");
		 
	}

	@Ignore
	public void testFindProduct() {
		ProductDAO proimpl=(ProductDAO)context.getBean("productDAO");
		Product p=proimpl.findProduct(1);
		
		
	}

	@Ignore
	public void testUpdateProduct() {
	     ProductDAO proimpl=(ProductDAO)context.getBean("productDAO");
		Product p=new Product();
		p=proimpl.findProduct(1);
	}

	@Ignore
	public void testGetAllProducts() {
		ProductDAO proimpl=(ProductDAO)context.getBean("productDAO");
		java.util.List<Product>list=proimpl.getAllProducts();
		for(Product p:list)
		{
			System.out.println(p.getProductName()+" "+p.getPrice()+" "+p.getQuantity()+" "+p.getDescription()+" "+p.getCategoryid()+" "+p.getSupplierid());	
			}
	}

}
