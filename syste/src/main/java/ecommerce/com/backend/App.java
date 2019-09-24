package ecommerce.com.backend;

import javax.sql.DataSource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;



import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.beans.factory.BeanCreationException;
import ecommerce.com.model.Cart;
import ecommerce.com.model.Category;
import ecommerce.com.model.Payment;
import ecommerce.com.model.Product;
import ecommerce.com.model.Supplier;
import ecommerce.com.model.User;
import ecommerce.com.model1.CartDAO;
import ecommerce.com.model1.CategoryDAO;
import ecommerce.com.model1.PaymentDAO;
import ecommerce.com.model1.ProductDAO;
import ecommerce.com.model1.SupplierDAO;
import ecommerce.com.model1.UserDAO;
public class App 
{
    public static void main( String[] args )
    {
try {
	ApplicationContext ctx=new AnnotationConfigApplicationContext(SpringConfiguration.class);
    
 ProductDAO daoimpl=(ProductDAO)ctx.getBean("productDAO");
 
Product p=new Product();
 p.setProductName("cofee");
 p.setPrice(100);
 p.setDescription(null);
 p.setCategoryid(0);
 p.setSupplierid(0);
 p.setQuantity(4);
if( daoimpl.addProduct(p))
{
	System.out.println("product added");
}
CategoryDAO daoimpl1=(CategoryDAO)ctx.getBean("categoryDAO");
Category p1=new Category();
p1.setCategoryName("vishaal");
p1.setDescription(null);
p1.setId(0);


if( daoimpl1.addCategory(p1))
{
	System.out.println("category added");
}
SupplierDAO daoimpl2=(SupplierDAO)ctx.getBean("supplierDAO");
Supplier p2=new Supplier();
p2.setId(0);
p2.setSupplierName("vishaal");
p2.setAddress(null);
if( daoimpl2.addSupplier(p2))
{
	System.out.println("supplier added");
}
UserDAO daoimpl3=(UserDAO)ctx.getBean("userDAO");
User p3=new User();
p3.setEmail("peter@gmail.com");
p3.setUserName("peter");
p3.setPassword("peter");
p3.setUser_role("peter");
p3.setId(5);
if( daoimpl3.addUser(p3))
{
	System.out.println("user added");
}
CartDAO daoimpl4=(CartDAO)ctx.getBean("cartDAO");
Cart p4=new Cart();
p4.setCartid("peter@gmail.com");
p4.setEmail("peter@gmail.com");
p4.setPrice(98);
p4.setProductid(1187);
p4.setId(1);
if( daoimpl4.addCart(p4))
{
	System.out.println("cart added");
}
PaymentDAO daoimpl5=(PaymentDAO)ctx.getBean("paymentDAO");
Payment p5=new Payment();
p5.setAccountno(123);
p5.setPaymentmethod("card");
p5.setShippingaddress("chennai");
if( daoimpl5.addPayment(p5))
{
	System.out.println("payment added");
}
} catch (Throwable e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
        
    }
}