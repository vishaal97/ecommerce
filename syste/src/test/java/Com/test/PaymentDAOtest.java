package Com.test;
import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import ecommerce.com.model.Payment;
import ecommerce.com.model1.PaymentDAO;
import ecommerce.com.model1.PaymentDAOimpl;


public class PaymentDAOtest {
	/*static ApplicationContext context;
	@BeforeClass
	public static void setUpBeforeClass() throws Exception{
		context=new AnnotationConfigApplicationContext(SpringConfiguration.class);
	}

	@Test
	public void testAddPayment() {
		Payment s=new Payment();
		s.setId(23);
		s.setCartid(123);
		s.setTotalamount("2499");
		PaymentDAO dao=(PaymentDAO)context.getBean("paymentDAO");
		 assertTrue(dao.addPayment(s));
	}

	@Test
	public void testDeletePayment() {
		PaymentDAO p=(PaymentDAO)context.getBean("paymentDAO");
		Payment co= p.findPayment(3);
		assert (p.deletePayment(co));
	}

	@Test
	public void testUpdatePayment() {
		PaymentDAO p=(PaymentDAO)context.getBean("paymentDAO");
		Payment co= p.findPayment(5);
		co.setTotalamount("56666");
		p.updatePayment(co);
	}

	@Test
	public void testFindPayment() {
		PaymentDAO p=(PaymentDAO)context.getBean("paymentDAO");
		Payment co=p.findPayment(5);
		System.out.println(co.getTotalamount());
	}

	@Test
	public void testGetAllPayments() {
		PaymentDAO p=(PaymentDAO)context.getBean("paymentDAO");
		for(Payment co:p.getAllPayments())
		{
			System.out.println(co.getTotalamount());
		}
	}
*/
}
	


