package Com.test;

import static org.junit.Assert.*;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import ecommerce.com.model1.SupplierDAO;
import ecommerce.com.backend.SpringConfiguration;
import ecommerce.com.model.Supplier;




public class SupplierDAOtest {
	public static ApplicationContext context;
	@BeforeClass
	public static void setConfiguration()
	{
		context=new AnnotationConfigApplicationContext(SpringConfiguration.class);
	}

	@Test
	public void testAddSupplier() {
	    Supplier s=new Supplier();
		s.setSupplierid(33);
		s.setSupplierName("vishaal");
		s.setAddress(null);
		SupplierDAO dao=(SupplierDAO)context.getBean("supplierDAO");
		
		
	}

	@Test
	public void testDeleteSupplier() {
		fail("not yet implemented");
	}

	@Test
	public void testFindSupplier() {
		SupplierDAO supimpl=(SupplierDAO)context.getBean("supplierDAO");
		 Supplier s=supimpl.findSupplier(1);
		 
	
	}

	@Test
	public void testUpdateSupplier() {
		SupplierDAO supimpl=(SupplierDAO)context.getBean("supplierDAO");
		Supplier s=new Supplier();
		s=supimpl.findSupplier(2);
	}

	@Test
	public void testGetAllSuppliers() {
		SupplierDAO supimpl=(SupplierDAO)context.getBean("supplierDAO");
		java.util.List<Supplier>list=supimpl.getAllSuppliers();
		for(Supplier s:list)
		{
			System.out.println(s.getSupplierName()+" "+s.getId()+" "+s.getAddress());
		}
		
	}

}
