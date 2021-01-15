package com.projet.sports.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.projet.sports.entity.User;

@Repository
public class UserDaoImpl implements UserDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public User findByUsername(String _username) {
		Session session = sessionFactory.getCurrentSession();
		Query<User> theQuery = session.createQuery("From User Where userName=:uName", User.class);
		theQuery.setParameter("uName", _username);
		
		User _user = null;
		try {
			_user = theQuery.getSingleResult();
		}
		catch(Exception exc) {
			_user = null;
		}
		return _user;
	}

	@Override
	public void save(User _user) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(_user);
	}

}
