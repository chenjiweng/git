package com.znsd.mystudent.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String GetLogin() {
		System.out.println("123");
		return "login";
	}
	

}
