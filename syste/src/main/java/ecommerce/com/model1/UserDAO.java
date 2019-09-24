package ecommerce.com.model1;

import ecommerce.com.model.User;

public interface UserDAO {
	boolean addUser(User p);
	boolean deleteUser(User p);
	User findUser(int id);
	User updateUser(User p);
	java.util.List<User> getAllUsers();

}
