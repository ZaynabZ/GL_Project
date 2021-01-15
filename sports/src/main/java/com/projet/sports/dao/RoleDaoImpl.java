package com.projet.sports.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.projet.sports.entity.Role;

@Repository
public class RoleDaoImpl implements RoleDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Role findRoleByName(String roleName) {
		Session session = sessionFactory.getCurrentSession();
		Query<Role> theQuery = session.createQuery("From Role Where name=:roleName", Role.class);
		theQuery.setParameter("roleName", roleName);
		
		Role _role = null;
		try {
			_role = theQuery.getSingleResult();
		}
		catch(Exception exc) {
			_role = null;
		}
		
		return _role;
	}

}
