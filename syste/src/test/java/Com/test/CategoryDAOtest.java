package Com.test;

import static org.junit.Assert.*;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import ecommerce.com.model1.CategoryDAO;
import ecommerce.com.backend.SpringConfiguration;
import ecommerce.com.model.Category;



public class CategoryDAOtest {
	public static ApplicationContext context;
	@BeforeClass
	public static void setConfiguration()
	{
		context=new AnnotationConfigApplicationContext(SpringConfiguration.class);
	}

	@Test
	public void testAddCategory() {
		Category p=new Category();
		p.setCategoryName("vishaal");
		p.setId(0);
		p.setDescription(null);
		CategoryDAO dao=(CategoryDAO)context.getBean("categoryDAO");
		
	}

	@Test
	public void testDeleteCategory() {
		fail("not yet implemented");
	 
	}

	@Test
	public void testFindCategory() {
	 CategoryDAO catimpl=(CategoryDAO)context.getBean("categoryDAO");
	 Category c=catimpl.findCategory(1);
	 
	}

	@Test
	public void testUpdateCategory() {
	CategoryDAO catimpl=(CategoryDAO)context.getBean("categoryDAO");
	Category c=new Category();
	c=catimpl.findCategory(1);
	
	}

	@Test
	public void testGetAllCategorys() {
		CategoryDAO catimpl=(CategoryDAO)context.getBean("categoryDAO");
		java.util.List<Category>list=catimpl.getAllCategorys();
		for(Category c:list)
		{
			System.out.println(c.getCategoryName()+" "+c.getId()+" "+c.getDescription());
		}
	}

}
