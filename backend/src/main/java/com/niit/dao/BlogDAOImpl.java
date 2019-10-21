package com.niit.dao;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.*;

/*import com.WeChat.Blog;
@Repository
@Transactional

public class BlogDAOImpl a d
	@Autowired
	SessionFactory sessionFactory;
	
	//========================================ADD BLOG======================================================================
	
	

	public boolean addBlog(Blog blog) {
		Session session=sessionFactory.getCurrentSession();
		session.save(blog);
		return true;
	}
	

	//========================================UPDATE BLOG====================================================================
	
	
	
	public boolean updateBlog(Blog blog) {
		Session session=sessionFactory.getCurrentSession();
		session.update(blog);
		return true;
	}

	//========================================DELETE BLOG====================================================================
	
	

	public boolean deleteblog(Blog blog) {
		Session session=sessionFactory.getCurrentSession();
		session.delete(blog);
		return true;
	}
	
	
	//========================================FIND BLOG======================================================================
	

	
	public Blog getBlog(int blogid) {
		Session session=sessionFactory.getCurrentSession();
	     Blog blog=session.get(Blog.class, blogid);
	  
		return blog;
	}
	
	//========================================INCREMENT LIKES=================================================================
	
	

	public boolean incrementLikes(int blogid) {
		Blog blog=this.getBlog(blogid);
		blog.setLikes(blog.getLikes()+1);
		Session session=sessionFactory.getCurrentSession();
		session.update(blog);
		return true;
	}
	
	//========================================INCREMENT DISLIKES==============================================================
	

	
	public boolean incrementDisLikes(int blogid) {
		Blog blog=this.getBlog(blogid);
		blog.setDislike(blog.getDislike()+1);
		Session session=sessionFactory.getCurrentSession();
		return true;
	}

	//========================================APPROVE BLOG====================================================================
	
	

	public boolean approveBlog(Blog blog) {
		blog.setStatus("A");
		Session session=sessionFactory.getCurrentSession();
		session.update(blog);
		return true;
	}

	
	//========================================REJECT BLOG====================================================================
	
	
	public boolean rejectBlog(Blog blog) {
		blog.setStatus("P");
		Session session=sessionFactory.getCurrentSession();
		session.update(blog);
		return true;
	}
	
	//========================================LIST THE BLOG====================================================================
	
	

	public List<Blog> listBlog() {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Blog b where b.status='A' ");
		List<Blog> bloglist=query.getResultList();
		
		return bloglist;
	}

	
	public List<Blog> listBlogForApproval() {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Blog ");
		List<Blog> bloglist=query.getResultList();
		
		return bloglist;
	}


}*/