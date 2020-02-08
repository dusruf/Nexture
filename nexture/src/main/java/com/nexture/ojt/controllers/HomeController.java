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
	public String login(EmployeeDTO employee,HttpSession session,Model model) {
		if(repo.login(employee.getEM_number(), employee.getPassword())==1) {
			EmployeeDTO temp = repo.selectEmployee(employee.getEM_number());
			List<EmployeeDTO>list = repo.listEmployee();
			session.setAttribute("name", temp.getName());
			session.setAttribute("id", temp.getEM_number());
			session.setAttribute("authority", temp.getAuthority());
				if(Integer.parseInt((String) session.getAttribute("authority"))==1) {
					return "redirect:/manage";
				}else {
					model.addAttribute("employee", temp);
					return "home";
				}
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
	public String signup2(EmployeeDTO employee) {
		repo.signup(employee);
		System.out.println();
		return "redirect:/manage";
	}
	
	@RequestMapping(value = "manage", method = RequestMethod.GET)
	public void manage(Model model) {
		List<EmployeeDTO> list = repo.listEmployee();
		model.addAttribute("employee", list);
	}

	@RequestMapping(value = "pw_change", method = RequestMethod.GET)
	public String pw_change() {
		return "pw_change";
	}
	
	
}
