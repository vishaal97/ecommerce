package ecommerce.com.model1;

import java.util.List;

import ecommerce.com.model.Cart;

public interface CartDAO {
 
		boolean addCart(Cart p);
		boolean deleteCart(Cart p);
		Cart findCart(int id);
		Cart updateCart(Cart p);
		java.util.List<Cart> getAllCarts(String cartid);
		int totalelements(String cartid);
	}

