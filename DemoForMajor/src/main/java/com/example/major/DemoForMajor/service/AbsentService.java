package com.example.major.DemoForMajor.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.major.DemoForMajor.model.Absent;
import com.example.major.DemoForMajor.repository.AbsentRepository;

@Service
public class AbsentService {

	@Autowired
	private AbsentRepository ob;
	
	public Absent saveToDb(Absent a)
	{
		return ob.save(a);
	}
	
	
}
