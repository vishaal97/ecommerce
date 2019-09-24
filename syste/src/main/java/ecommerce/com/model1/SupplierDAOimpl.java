package ecommerce.com.model1;

import java.util.List;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import ecommerce.com.model1.SupplierDAO;
import ecommerce.com.model.Supplier;

@Transactional
@Repository
public class SupplierDAOimpl implements SupplierDAO {

	@Autowired 
	SessionFactory sessionFactory;
	public boolean addSupplier(Supplier p) {
      sessionFactory.getCurrentSession().save(p);		
	
		// TODO Auto-generated method stub
		return true;
	}

	public boolean deleteSupplier(Supplier p) {
	      sessionFactory.getCurrentSession().delete(p);		
	  	
		// TODO Auto-generated method stub
		return true;
	}

	public Supplier findSupplier(int id) {
		// TODO Auto-generated method stub
		Supplier p=      sessionFactory.getCurrentSession().get(Supplier.class,id);			
		
		return p;
	}

	public Supplier updateSupplier(Supplier p) {
	      sessionFactory.getCurrentSession().update(p);		
	  	
		// TODO Auto-generated method stub
		return p;
	}

	public List<Supplier> getAllSuppliers() {
		
	    return  sessionFactory.getCurrentSession().createQuery("from Supplier p").list()	;	
	  	
		// TODO Auto-generated method stub
		
	}
	
	

}