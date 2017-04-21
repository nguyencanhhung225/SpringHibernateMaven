package com.hungnc.springhibernate.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "product")
public class Product implements Serializable {

	@Id
	@GeneratedValue
	@Column(name = "id")
	private int id;

	@Column(name = "name")
	private String name;

	@Column(name = "trademark")
	private String trademark;

	@Column(name = "price")
	private int price;

	@Column(name = "image")
	private String image;

	@Column(name = "id_category")
	private int idCategory;

	public Product() {
		super();
	}

	public Product(String name, String trademark, int price, String image, int idCategory) {
		super();
		this.name = name;
		this.trademark = trademark;
		this.price = price;
		this.image = image;
		this.idCategory = idCategory;
	}

	public Product(int id, String name, String trademark, int price, String image, int idCategory) {
		super();
		this.id = id;
		this.name = name;
		this.trademark = trademark;
		this.price = price;
		this.image = image;
		this.idCategory = idCategory;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTrademark() {
		return trademark;
	}

	public void setTrademark(String trademark) {
		this.trademark = trademark;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getIdCategory() {
		return idCategory;
	}

	public void setIdCategory(int idCategory) {
		this.idCategory = idCategory;
	}

}
