package com.niit.dao;

import com.niit.model.UserDetail;

public interface UserDAO {
	
	public boolean registerUserDetail(UserDetail userdetail);
	public boolean updateUserDetail(UserDetail userdetail);
	public UserDetail getUserDetail(String username);

}
