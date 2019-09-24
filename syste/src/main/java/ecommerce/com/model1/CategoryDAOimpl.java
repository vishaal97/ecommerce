package ecommerce.com.model1;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import ecommerce.com.model.Category;


@Repository
@Transactional

public class CategoryDAOimpl implements CategoryDAO {
	@Autowired 
	SessionFactory sessionFactory;

	public boolean addCategory(Category p) {
		sessionFactory.getCurrentSession().save(p);		
		
		// TODO Auto-generated method stub
		return true;
		
	}

	public boolean deleteCategory(Category p) {
		 sessionFactory.getCurrentSession().delete(p);
		// TODO Auto-generated method stub
		return true;
	}

	public Category findCategory(int id) {
		// TODO Auto-generated method stub
		Category p=      sessionFactory.getCurrentSession().get(Category.class,id);	
		return p;
	}

	public Category updateCategory(Category p) {
		sessionFactory.getCurrentSession().update(p);		
	  	
		// TODO Auto-generated method stub
		return p;
	}

	public List<Category> getAllCategorys() {
		return  sessionFactory.getCurrentSession().createQuery("from Category p").list()	;
		// TODO Auto-generated method stub
	
	}

}
	
