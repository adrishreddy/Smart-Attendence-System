package com.example.major.DemoForMajor.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Index {
	
	@RequestMapping("/")
	public String showIndex()
	{
		return "index";
	}
	
	

}
