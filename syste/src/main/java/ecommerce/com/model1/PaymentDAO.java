package ecommerce.com.model1;

import ecommerce.com.model.Payment;

public interface PaymentDAO {
	public boolean addPayment(Payment pa);
	public boolean deletePayment(Payment pa);
	Payment updatePayment(Payment pa);
    Payment findPayment(int id);
    java.util.List<Payment> getAllPayments(String cartid);
    


}
