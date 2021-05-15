package com.example.major.DemoForMajor.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.major.DemoForMajor.model.Absent;
import com.example.major.DemoForMajor.model.Present;
import com.example.major.DemoForMajor.repository.AbsentRepository;
import com.example.major.DemoForMajor.repository.PresentRepository;

@Service

public class PresentService {
	
	@Autowired
	private PresentRepository ob;
	
	public Present saveToDb(Present a)
	{
		return ob.save(a);
	}

}
