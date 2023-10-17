package com.main.bean;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class User {

	private String name;
	private String password;
	@Id
	private String number;
	private String address;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(String name, String password, String number, String address) {
		super();
		this.name = name;
		this.password = password;
		this.number = number;
		this.address = address;
	}
	@Override
	public String toString() {
		return "User [name=" + name + ", password=" + password + ", number=" + number + ", address=" + address + "]";
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
}

