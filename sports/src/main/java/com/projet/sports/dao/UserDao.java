package com.projet.sports.dao;

import com.projet.sports.entity.User;

public interface UserDao {
	
	User findByUsername(String _username);
	void save(User _user);

}
