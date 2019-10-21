package com.niit.dao;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
/*import com.WeChat.Forum;

@Repository
@Transactional
public class ForumDAOImpl {
	@Autowired
	SessionFactory sessionFactory;

	//====================================================ADD FORUM==============================================================================
	
	
	
	public boolean addForum(Forum forum) {
		Session session=sessionFactory.getCurrentSession();
		session.save(forum);
		return true;
	}
	
	
	//====================================================GET FORUM==============================================================================
	

	
	public Forum getForum(int forumid) {
		Session session=sessionFactory.getCurrentSession();
		Forum  forum=session.get(Forum.class,forumid);
		return forum;
	}

	//====================================================LIST FORUM==============================================================================
	
	
	
	public List<Forum> listForum() {
		Session session=sessionFactory.getCurrentSession();
		Query query= session.createQuery("from Forum");
		List<Forum> forumlist=query.getResultList();
		return forumlist;
	}


	//====================================================DELETE FORUM==============================================================================

	
	public boolean delete(Forum forum) {
		Session session=sessionFactory.getCurrentSession();
		session.delete(forum);
		return true;
	}
	
	//====================================================UPDATE FORUM==============================================================================

	
	public boolean updateForum(Forum forum) {
		Session session=sessionFactory.getCurrentSession();
		session.update(forum);
		return true;
	}
}*/
