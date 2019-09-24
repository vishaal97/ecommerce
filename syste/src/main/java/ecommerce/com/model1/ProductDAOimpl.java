package ecommerce.com.model1;

import java.util.List;


import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import ecommerce.com.model.Product;

@Repository
@Transactional



public class ProductDAOimpl implements ProductDAO {
	@Autowired 
	SessionFactory sessionFactory;
	public boolean addProduct(Product p) {
		sessionFactory.getCurrentSession().save(p);
		// TODO Auto-generated method stub
		return true;
	}

	public boolean deleteProduct(Product p) {
		sessionFactory.getCurrentSession().delete(p);
		// TODO Auto-generated method stub
		return true;
	}

	public Product findProduct(int id) {
		// TODO Auto-generated method stub
		Product p=      sessionFactory.getCurrentSession().get(Product.class,id);	
		return p;
	}

	public Product updateProduct(Product p) {
		sessionFactory.getCurrentSession().update(p);	
		// TODO Auto-generated method stub
		return p;
	}

	public List<Product> getAllProducts() {
		return  sessionFactory.getCurrentSession().createQuery("from Product p").list()	;
		// TODO Auto-generated method stub
		
	}

}
