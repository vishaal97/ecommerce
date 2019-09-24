package ecommerce.com.model1;

import java.util.List;

import ecommerce.com.model.Cart;
import ecommerce.com.model.Payment;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ecommerce.com.model1.PaymentDAO;
@Repository
@Transactional

public class PaymentDAOimpl implements PaymentDAO {
	@Autowired
	SessionFactory sessionFactory;

	public boolean addPayment(Payment pa) {
		sessionFactory.getCurrentSession().save(pa);
		
		// TODO Auto-generated method stub
		return true;
	}

	public boolean deletePayment(Payment pa) {
		sessionFactory.getCurrentSession().delete(pa);
		// TODO Auto-generated method stub
		return true;
	}

	public Payment updatePayment(Payment pa) {
		sessionFactory.getCurrentSession().update(pa);
		// TODO Auto-generated method stub
		return pa;
	}

	public Payment findPayment(int id) {
		Session session=sessionFactory.getCurrentSession();
		Query query= session.createQuery("from Payment pa where pa.id="+id);
		session.get(Payment.class, id);
		List<Payment> paymentlist= query.list();
		return paymentlist.get(0);
	}

	public List<Payment> getAllPayments(String cartid) {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from cart p where p.cartid()="+cartid);
		List<Payment>paymentlist=query.list();
		return paymentlist;
		
		
		
		
		// TODO Auto-generated method stub
		
	}
	


}
