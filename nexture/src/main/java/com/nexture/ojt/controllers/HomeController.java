package com.nexture.ojt.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nexture.ojt.dao.EmployeeRepository;
import com.nexture.ojt.dto.EmployeeDTO;

/**
 * Handles requests for the application home page.
 */

@Controller
public class HomeController {
	
	@Autowired
	EmployeeRepository repo;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "login";
	}
	
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(String EM_number,String password,HttpSession session,Model model) {
		if(repo.login(EM_number, password)==1) {
			EmployeeDTO temp = repo.selectEmployee(EM_number);
			List<EmployeeDTO>list = repo.listEmployee();
			session.setAttribute("name", temp.getName());
			session.setAttribute("id", temp.getEM_number());
			session.setAttribute("authority", temp.getAuthority());
			model.addAttribute("employee", list);
			return "home";
		}
		return "login";
	}
	
	@RequestMapping(value = "logout",method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "login";
	}
	
	@RequestMapping(value = "signup", method = RequestMethod.GET)
	public String signup() {
		return "signup";
	}
	
	@RequestMapping(value = "signup", method = RequestMethod.POST)
	public String signup2(EmployeeDTO employee,HttpSession session,Model model) {
		repo.signup(employee);
		session.setAttribute("name", employee.getName());
		session.setAttribute("id", employee.getEM_number());
		session.setAttribute("authority", 0);
		return "home";
	}
	
}
