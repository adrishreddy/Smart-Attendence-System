package com.example.major.DemoForMajor.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.major.DemoForMajor.model.Teamdetails;
import com.example.major.DemoForMajor.repository.TeamdetailsRepository;

@Service
public class TeamdetailsService {
	
	@Autowired
	private TeamdetailsRepository ob;
	public Teamdetails saveToDb(Teamdetails a)
	{
		return ob.save(a);
	}

}
