package com.hungnc.springhibernate.dao;

import java.util.List;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.hungnc.springhibernate.model.Product;
import com.hungnc.springhibernate.utils.HibernateUtil;

@Repository
public class ProductDAOImpl implements ProductDAO {

	@Override
	public List<Product> getAll() {
		
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		List result = session.createQuery("from Product").list();
		session.getTransaction().commit();
		return result;
		
	}

}
