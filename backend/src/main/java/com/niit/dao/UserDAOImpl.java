package com.niit.dao;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.User;



@Repository
@Transactional

public class UserDAOImpl {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void registerUser(User user)
	{
		Session session=sessionFactory.getCurrentSession();
		session.save(user);
		/*session.flush();
		session.close();*/
	}

	@Override
	public User validateUsername(String username) 
	{
		Session session=sessionFactory.getCurrentSession();
		User user=(User)session.get(User.class, username);
		//session.flush();
		//session.close();
		return user;
	}

	@Override
	public User validateEmail(String email)
	{
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from User where email=?");
		query.setString(0,email);
		User user=(User)query.uniqueResult();
		//session.flush();
		//session.close();
		return user;
	}

	@Override
	public User login(User user)
	{
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from User where username = ? and password = ?");
		query.setString(0, user.getUsername());
		query.setString(1, user.getPassword());
		//session.flush();
		//session.close();
		return (User)query.uniqueResult();
	}

	@Override
	public void update(User user) 
	{
		Session session=sessionFactory.getCurrentSession();
		session.update(user);//update the values [online status]
		//session.flush();
		//session.close();
		
	}

	@Override
	public User getUserByUsername(String username)
	{
		Session session=sessionFactory.getCurrentSession();
		User user=(User)session.get(User.class, username);
		//session.flush();
		//session.close();
		return user;
	}

	

}
