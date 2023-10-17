package com.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.main.bean.Shipped;
import com.main.bean.User;

import com.main.service.ServiceLayer;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class CrudController {

	@Autowired
	ServiceLayer serv;

//register 
	@RequestMapping(path = "/registration", method = RequestMethod.POST)
	public String registration(@ModelAttribute("user") User user, Model model) {

		
		Boolean x = serv.regi(user);
		
		return "login";
	}

	// update

	@RequestMapping(path = "/updateuser", method = RequestMethod.POST)
	public String update(@ModelAttribute("user") User user, Model model) {

		boolean result = serv.userUpdate(user);
		String target = "";
		if (result) {

			target = "update";
			model.addAttribute("msg", "Updated successfully");
		} else {

			target = "update";
			model.addAttribute("msg", "somthing went wrong");
		}
		return target;
	}

	// delete
	@RequestMapping(path = "/daleteuser", method = RequestMethod.POST)
	public String delete(@RequestParam("number") String number, Model model) {

		boolean result = serv.userDelete(number);

		String target = "";
		if (result) {

			target = "delete";
			model.addAttribute("msg", "deleted successfully");

		} else {

			target = "delete";
			model.addAttribute("msg", "something went wrong");
		}

		return target;
	}

	// getall

	@RequestMapping(path = "/getallUser", method = RequestMethod.POST)
	public String getall(Model model) {
		String target = "";
		List<User> userData = serv.usergetall();
		System.out.println(userData);
		if (userData != null) {
			target = "getall";
			model.addAttribute("data", userData);
		} else {
			target = "adminpanal";
		}

		return target;
	}
	// login

	@RequestMapping(path = "/log", method = RequestMethod.POST)
	public String userLogin(@ModelAttribute("user") User user, Model model,HttpServletRequest request) {
		String target = "";
		HttpSession session =request.getSession();
		String name = serv.log(user);
		if (name!=null) {
			target = "services";
			//model.addAttribute("uname", user.getNumber());
	session.setAttribute("ses", name);
		
		} else {
			target = "login";
		}

		return target;
	}

	// UserOrder

	@RequestMapping(path = "/saveOrder", method = RequestMethod.POST)
	public String shipped(@ModelAttribute("ship") Shipped ship ,Model model) {
		boolean b=serv.saveorder(ship);
	model.addAttribute("odd","Order Done ");
		
		return "services";
	}

	// admin login
	@RequestMapping(path = "/adminlo", method = RequestMethod.POST)
	public String adminlogin(@RequestParam("username") String name, @RequestParam("password") String password) {

		String target = "";
		if (name.equals("Arun") && password.equals("123")) {

			target = "adminpanal";

		} else {

			target = "adminlogin";
		}

		return target;
	}


	  //show order
		
		  @RequestMapping(path="/showorder" ,method = RequestMethod.POST) 
		  public String showo(Model model) {
			  String target="";
			  List<Shipped> userData=serv.usershow(); 
			  System.out.println(userData);
			 if(userData!=null) {
		  target="show";
		  model.addAttribute("data",userData);
		  }else {
		  target="adminpanal";
		  }
		  
		  return target; }
		 
	

}
