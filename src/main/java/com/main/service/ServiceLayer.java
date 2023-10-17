package com.main.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.bean.Shipped;
import com.main.bean.User;

import com.main.repositry.RepositryLayer;
import com.main.repositry.ShippedOrderDb;

@Service
public class ServiceLayer {

	@Autowired
	RepositryLayer repo;

	@Autowired
	ShippedOrderDb sdb;

	// register
	public Boolean regi(User u) {
		System.out.println("Service chali");
		boolean result = false;
		User x = repo.save(u);
		System.out.println(x);
		if (x != null) {
			result = true;
		}
		return result;
	}

	// login
	public String log(User user) {
String name="";
		
		Optional<User> y = repo.findById(user.getNumber());
		if (y.isPresent()) {

			User u = y.get();
			if (u.getPassword().equals(user.getPassword())) {
				name=u.getName();
			}
		}
		return name;
	}

	// update
	public boolean userUpdate(User u) {

		boolean result = false;

		Optional<User> obj = repo.findById(u.getNumber());
		if (obj.isPresent()) {
			repo.save(u);
			result = true;
		} else {

			result = false;
		}

		return result;

	}

	// delete

	public boolean userDelete(String number) {

		boolean result = false;
		Optional<User> obj = repo.findById(number);

		if (obj.isPresent()) {

			result = true;
			repo.deleteById(number);
		} else {
			result = false;
		}
		return result;
	}

	// getall

	public List<User> usergetall() {
		List<User> data = new ArrayList();
		repo.findAll().forEach(data::add);

		return data;
	}

	// oder save
	public boolean saveorder(Shipped sdbdata) {

		boolean result = false;
		sdb.save(sdbdata);
		System.out.println("servDone");

		return result;
	}

	// show oder

	
	  public List<Shipped> usershow() { 
		  
	List<Shipped> ordershow = new ArrayList();
	sdb.findAll().forEach(ordershow::add);
	  
	  return ordershow; }
	 

	
	 

}
