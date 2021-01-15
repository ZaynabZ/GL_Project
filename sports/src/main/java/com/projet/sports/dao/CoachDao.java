package com.projet.sports.dao;

import com.projet.sports.entity.User;

public interface CoachDao {
	
	public User findCoachByUsername(String _username);

}
