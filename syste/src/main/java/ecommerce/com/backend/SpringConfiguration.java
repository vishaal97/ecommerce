package ecommerce.com.backend;
import javax.sql.DataSource;
import org.hibernate.Session;

import org.hibernate.SessionFactory;

import org.springframework.context.annotation.Bean;

import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import ecommerce.com.model1.CartDAO;
import ecommerce.com.model1.CartDAOimpl;
import ecommerce.com.model1.CategoryDAO;
import ecommerce.com.model1.CategoryDAOimpl;
import ecommerce.com.model1.PaymentDAOimpl;
import ecommerce.com.model1.PaymentDAO;
import ecommerce.com.model1.PaymentDAOimpl;
import ecommerce.com.model1.ProductDAO;
import ecommerce.com.model1.ProductDAOimpl;
import ecommerce.com.model1.SupplierDAO;
import ecommerce.com.model1.SupplierDAOimpl;
import ecommerce.com.model1.UserDAO;
import ecommerce.com.model1.UserDAOimpl;
import ecommerce.com.model.Cart;
import ecommerce.com.model.Category;
import ecommerce.com.model.Payment;
import ecommerce.com.model.Product;
import ecommerce.com.model.Supplier;
import ecommerce.com.model.User;

import java.util.Properties;
@Configuration
@EnableTransactionManagement
public class SpringConfiguration {

	@Bean("dataSource")
	public DataSource getDataSource()
	{
		DriverManagerDataSource ds=new DriverManagerDataSource();
		
		ds.setDriverClassName("org.h2.Driver");
		ds.setUrl("jdbc:h2:tcp://localhost/~/test");
		ds.setUsername("sa");
		ds.setPassword("");
		return ds;
		
	}
	
	@Bean("sessionfactory") 
	public SessionFactory getSessionFactory()
	{
	
		Properties properties=new Properties();
		properties.setProperty("hibernate.hbm2ddl.auto", "update");
		properties.setProperty("hibenate.dialect","org.hibernate.dialect.H2Dialect");
		properties.setProperty("hibernate.show_sql", "true");
		LocalSessionFactoryBuilder builder=new LocalSessionFactoryBuilder(getDataSource());
		builder.addAnnotatedClass(Product.class);
		builder.addAnnotatedClass(Supplier.class);
		builder.addAnnotatedClass(Category.class);
		builder.addAnnotatedClass(User.class);
		builder.addAnnotatedClass(Payment.class);
		builder.addAnnotatedClass(Cart.class);
		builder.addProperties(properties);
        SessionFactory factory=builder.buildSessionFactory();
        return factory;
	
	}
	
	@Bean("txManager")
	public HibernateTransactionManager getTransactionManager()
	{
		HibernateTransactionManager manager=new HibernateTransactionManager(getSessionFactory());
	 return manager;
	}
	@Bean("productDAO")
	public ProductDAO getProductDAO()
	{
		ProductDAOimpl a =new ProductDAOimpl();
		return a;
	}
	@Bean("cartDAO")
	public CartDAO getCartDAO()
	{
		CartDAOimpl b =new CartDAOimpl();
		return b;
		
	}
	@Bean("categoryDAO")
	public CategoryDAOimpl getCategoryDAO()
	{
		CategoryDAOimpl c =new CategoryDAOimpl();
		return c;
		
	}
	@Bean("supplierDAO")
	public SupplierDAOimpl getSupplierDAO()
	{
		SupplierDAOimpl d =new SupplierDAOimpl();
		return d;
		
	}
	@Bean("userDAO")
	public UserDAOimpl getUserDAO()
	{
		UserDAOimpl e =new UserDAOimpl();
		return e;
		
	}
	@Bean("paymentDAO")
	public PaymentDAOimpl getPaymentDAO()
	{
		PaymentDAOimpl f =new PaymentDAOimpl();
		return f;
		
	}
	}
