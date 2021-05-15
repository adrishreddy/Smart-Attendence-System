package com.example.major.DemoForMajor.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.major.DemoForMajor.model.Absent;
import com.example.major.DemoForMajor.model.Message;
import com.example.major.DemoForMajor.model.Present;
import com.example.major.DemoForMajor.model.Teamdetails;
import com.example.major.DemoForMajor.repository.AbsentRepository;
import com.example.major.DemoForMajor.repository.MessageRepository;
import com.example.major.DemoForMajor.repository.PresentRepository;
import com.example.major.DemoForMajor.repository.TeamdetailsRepository;

@Controller
public class HomeController {
	
	
	@Autowired
	private TeamdetailsRepository trep;
	@Autowired
	private PresentRepository prep;
	@Autowired
	private AbsentRepository arep;
	@Autowired
	private MessageRepository mrep;
	
	@RequestMapping("/home")
	public ModelAndView showHome()
	{
		ModelAndView mav = new ModelAndView("home") ;
		
		List<Message> mes = this.mrep.findAll();
		String temp = mes.get(0).getSentMessage();
		if(temp.equals("no"))
			mav.addObject("sent", false);
		else
			mav.addObject("sent", true);
		
		
		SecurityContextHolder.getContext().getAuthentication();
		Authentication  auth = SecurityContextHolder.getContext().getAuthentication();
	    String name = auth.getName();
	    mav.addObject("username", name);
	    
	    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy");
	    LocalDateTime now = LocalDateTime.now();
	    mav.addObject("date",dtf.format(now));
	    
	    
	    List<Teamdetails> team = this.trep.findAll();
	    if(team.size()==0)
	    {
	    	mav.addObject("hasany1", false);
	    }
	    else
	    {
		    List<Teamdetails> td = new ArrayList<Teamdetails>();
		    for(Teamdetails i : team)
		    {
		    	td.add(i);
		    }
		    mav.addObject("td",td);
		    mav.addObject("hasany1", true);
	    }
	    
	    
	    List<Present> pre = this.prep.findAll();
	    if(pre.size()==0)
	    {
	    	mav.addObject("hasany2", false);
	    	 mav.addObject("noOfPre", pre.size());
	    }
	    else
	    {
	    	mav.addObject("pre", pre);
		    mav.addObject("hasany2", true);
		    mav.addObject("noOfPre", pre.size());
	    }
	    
	    
	    
	    List<Absent> absent = this.arep.findAll();
	    if(absent.size()==0) {
	    	mav.addObject("hasany3", false);
	    	mav.addObject("noOfAbe", absent.size());
	    }
	    else
	    {
			List<Absent> abs = new ArrayList<Absent>();
			for(Absent i : absent)
			{
				abs.add(i);
			}
			mav.addObject("abs", abs);
			mav.addObject("hasany3", true);
			mav.addObject("noOfAbe", abs.size());
	    }
	    
	    
	    
	    
	    
	    
	    
	    return mav;
		
	}
	@RequestMapping("/logout")
	public String showLogout()
	{
		return "logout";
	}
	@RequestMapping("/login")
	public String showLogin(ModelMap model)
	{		
		return "login";
	}
	
//	@RequestMapping(value = "/login", method = RequestMethod.POST)
//    public String loginPage(@RequestParam(value = "error", required = false) String error, 
//                            @RequestParam(value = "logout", required = false) String logout,
//                            Model model) {
//        String errorMessge = null;
//        if(error != null) {
//            errorMessge = "Username or Password is incorrect !!";
//        }
//        if(logout != null) {
//            errorMessge = "You have been successfully logged out !!";
//        }
//        model.addAttribute("errorMessge", errorMessge);
//        return "login";
//    }
//  
//    @RequestMapping(value="/logout", method = RequestMethod.GET)
//    public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
//        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//        if (auth != null){    
//            new SecurityContextLogoutHandler().logout(request, response, auth);
//        }
//        return "redirect:/login?logout=true";
//    }

	
	
	
}
