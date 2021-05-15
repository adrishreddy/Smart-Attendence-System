package com.example.major.DemoForMajor.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.major.DemoForMajor.model.Message;
import com.example.major.DemoForMajor.repository.MessageRepository;

@Service
public class MessageService {
	
	@Autowired
	private MessageRepository ob;
	
	public Message saveToDb(Message a)
	{
		return ob.save(a);
	}

}
