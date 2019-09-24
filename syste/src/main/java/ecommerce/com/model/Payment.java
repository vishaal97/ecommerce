package ecommerce.com.model;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity

public class Payment {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private String cartid;
	
	
	public String getCartid() {
		return cartid;
	}
	public void setCartid(String cartid) {
		this.cartid = cartid;
	}
	private int accountno;
	public String getPaymentmethod() {
		return paymentmethod;
	}
	public void setPaymentmethod(String paymentmethod) {
		this.paymentmethod = paymentmethod;
	}
	public String getShippingaddress() {
		return shippingaddress;
	}
	public void setShippingaddress(String shippingaddress) {
		this.shippingaddress = shippingaddress;
	}
	private String paymentmethod;
	private String shippingaddress;
	public int getAccountno() {
		return accountno;
	}
	public void setAccountno(int accountno) {
		this.accountno = accountno;
	}
	
	

}



