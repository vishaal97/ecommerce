package com.niit.dao;
import java.util.List;

import com.niit.model.Friend;
import com.niit.model.User;


public interface FriendDAO {
	 public List<Friend> showPendingFriendRequest(String username);
	 public List<Friend> showFriendList(String username);
	 public List<String> showSuggestedFriend(String username);
	 
	 public boolean deleteFriendRequest(int friendid);
	 public boolean acceptFriendRequest(int friendid);
	 public boolean sendFriendRequest(Friend friend);

}
