package com.projet.sports.service;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.projet.sports.entity.User;
import com.projet.sports.user.CrmUser;

public interface UserService extends UserDetailsService {
	
	User findByUserName(String userName);
	
	void save(CrmUser ncrmUser);
}
