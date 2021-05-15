package com.example.major.DemoForMajor.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.major.DemoForMajor.model.Absent;
import com.example.major.DemoForMajor.repository.AbsentRepository;

@Controller
public class AbsentController {
	
	
	@Autowired
	private AbsentRepository arep; 
	
	@RequestMapping("/a")
	public ModelAndView showNames()
	{
		ModelAndView mav = new ModelAndView("index2");
		List<Absent> absent = this.arep.findAll();
		List<Absent> abs = new ArrayList<Absent>();
		for(Absent i : absent)
		{
			abs.add(i);
		}
		System.out.println(abs.get(0)+" "+abs.get(1));	
		mav.addObject("ob", abs);
		return mav;
	}
	@RequestMapping("/demo")
	public ModelAndView show()
	{
		ModelAndView mav = new ModelAndView("demo");
		mav.addObject("ob", "17R21A05E7");
		return mav;
		
	}
	

}
