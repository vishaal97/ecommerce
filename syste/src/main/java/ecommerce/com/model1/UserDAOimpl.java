package ecommerce.com.model1;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import ecommerce.com.model.User;
@Repository
@Transactional

public class UserDAOimpl implements UserDAO {
	@Autowired 
	SessionFactory sessionFactory;

	public boolean addUser(User p) {
		 sessionFactory.getCurrentSession().save(p);
		// TODO Auto-generated method stub
		return true;
	}

	public boolean deleteUser(User p) {
		 sessionFactory.getCurrentSession().delete(p);	
		// TODO Auto-generated method stub
		return true;
	}

	public User findUser(int id) {
		
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Query query= session.createQuery("from User p where p.id="+id);
		session.get(User.class, id);
		List<User> Userlist= query.list();
		return Userlist.get(0);
	}

	public User updateUser(User p) {
		 sessionFactory.getCurrentSession().update(p);	
		// TODO Auto-generated method stub
		return p;
	}

	public List<User> getAllUsers() {
		return  sessionFactory.getCurrentSession().createQuery("from User p").list()	;	
		// TODO Auto-generated method stub
		
	}

}
