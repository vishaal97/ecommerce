package ecommerce.com.model1;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import ecommerce.com.model.Cart;
import ecommerce.com.model1.CartDAO;
@Repository
@Transactional
public   class CartDAOimpl implements CartDAO {
	@Autowired 
	
	SessionFactory sessionFactory;

	public boolean addCart(Cart p) {
		sessionFactory.getCurrentSession().save(p);
		// TODO Auto-generated method stub
		return true;
	}

	public boolean deleteCart(Cart p) {
		sessionFactory.getCurrentSession().delete(p);	
		// TODO Auto-generated method stub
		return true;
	}

	public Cart findCart(int id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Query query= session.createQuery("from Cart p where p.id="+id);
		session.get(Cart.class, id);
		List<Cart> cartlist= query.list();
		return cartlist.get(0);
	}

	public Cart updateCart(Cart p) {
		sessionFactory.getCurrentSession().update(p);	
		// TODO Auto-generated method stub
		return p;
	}

	public List<Cart> getAllCarts(String cartid) {
		return  sessionFactory.getCurrentSession().createQuery("from Cart p where p.cartid='"+cartid+"'").list()	;		
		// TODO Auto-generated method stub
		
	}
	
	public int totalelements(String cartid) {
	    Session session=sessionFactory.getCurrentSession();
	    Query query=session.createQuery("select p from Cart p where p.cartid='"+cartid+"'");
		java.util.List<Cart> cartlist=query.list();
		int size=cartlist.size();
	    // TODO Auto-generated method stub
			return size;
		}

	

	

}	