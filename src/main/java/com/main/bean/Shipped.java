package com.main.bean;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Shipped {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	private String productsName;
	private String price;
	private String quantity;
	public Shipped() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Shipped(int id, String name, String productsName, String price, String quantity) {
		super();
		this.id = id;
		this.name = name;
		this.productsName = productsName;
		this.price = price;
		this.quantity = quantity;
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
	public String getProductsName() {
		return productsName;
	}
	public void setProductsName(String productsName) {
		this.productsName = productsName;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	@Override
	public String toString() {
		return "Shipped [id=" + id + ", name=" + name + ", productsName=" + productsName + ", price=" + price
				+ ", quantity=" + quantity + "]";
	}
		
	
}
