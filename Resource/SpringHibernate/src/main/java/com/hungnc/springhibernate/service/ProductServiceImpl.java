package com.hungnc.springhibernate.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hungnc.springhibernate.dao.ProductDAO;
import com.hungnc.springhibernate.dao.ProductDAOImpl;
import com.hungnc.springhibernate.model.Product;

@Service
public class ProductServiceImpl implements ProductService{
	
//	ProductDAO productDAO = new ProductDAOImpl();
	
	@Autowired
	private ProductDAO productDAO;
	
	@Override
	public List<Product> getAll() {
		return productDAO.getAll();
	}

}
