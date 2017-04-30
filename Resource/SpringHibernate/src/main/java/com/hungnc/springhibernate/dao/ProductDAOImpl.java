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

	public static void main(String[] args) {
		ProductDAO productDAO = new ProductDAOImpl();
		List<Product> list = productDAO.getAll();
		for (Product product : list) {
			System.out.println(product.getName() + " - " + product.getCategory().getName());
		}
		System.out.println(list.size());
	}
}
