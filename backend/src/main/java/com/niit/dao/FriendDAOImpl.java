package com.niit.dao;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Friend;
import com.niit.model.User;

@Repository
@Transactional

public class FriendDAOImpl {
	@Autowired
	SessionFactory sessionFactory;
	
	
	//========================================PENDING FRIEND REQUEST====================================================================
	
	
	public List<Friend> showPendingFriendRequest(String username) 
	{
		Session session=sessionFactory.openSession();
		Query query=(Query) session.createQuery("from Friend  f where f.username=:fname and f.status='P'");
		query.setParameter("fname",username);
        List<Friend> pendingfriendList=query.getResultList();
		return pendingfriendList;
	}

	
	//========================================SHOW FRIEND LIST=========================================================================
	
	
	
	public List<Friend> showFriendList(String username)
	{
		Session session=sessionFactory.getCurrentSession();
		Query query=(Query) session.createQuery("from Friend f where (f.username=:uname or f.friendname=:fname) and f.status='A'");
		query.setParameter("uname", username);
		query.setParameter("fname", username);
		List<Friend> friendlist=query.getResultList();
		return friendlist;
	}

	
	//========================================SHOW SUGGESTED FRIEND ====================================================================
	
	
	public List<String> showSuggestedFriend(String username) {
		Session session=sessionFactory.getCurrentSession();
		Query query=(Query) session.createSQLQuery("select distinct friendname from friend");
		List<String> userdetaillist=query.getResultList();
		System.out.println("suggested "+userdetaillist);
		return userdetaillist;
	}
	
	
	//========================================DELETE FRIEND REQUEST=====================================================================
	

	public boolean deleteFriendRequest(int friendid) 
	{
		
		Session session=sessionFactory.getCurrentSession();
		Friend friend=session.get(Friend.class, friendid);
		
		session.delete(friend);
		return true;
	}

	
	//========================================ACCEPT FRIEND REQUEST=====================================================================
	
	
	public boolean acceptFriendRequest(int friendid)
	{
		Session session=sessionFactory.getCurrentSession();
		Friend friend=session.get(Friend.class, friendid);
		
		friend.setStatus("A");
		session.update(friend);
		return true;
	}
	
	
	//========================================SEND FRIEND REQUEST=======================================================================
	

	public boolean sendFriendRequest(Friend friend) 
	{
		friend.setStatus("P");
		Session session=sessionFactory.getCurrentSession();
		session.save(friend);
		return true;
	}
}
