package com.hungnc.springhibernate.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hungnc.springhibernate.model.Product;
import com.hungnc.springhibernate.service.ProductService;
import com.hungnc.springhibernate.service.ProductServiceImpl;

@Controller
@RequestMapping(value = "/product")
public class ProductController {
	
//	ProductService productService = new ProductServiceImpl();
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = "/products")
	public ModelAndView products() {
		List<Product> listProduct = productService.getAll();
		
		ModelAndView modelAndView = new ModelAndView("products");
		
		modelAndView.addObject("msgListProduct", listProduct);
		
		return modelAndView;
	}
}
