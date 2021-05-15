package com.example.major.DemoForMajor.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.major.DemoForMajor.model.Absent;
import com.example.major.DemoForMajor.model.MessageModel;
import com.example.major.DemoForMajor.model.Present;
import com.example.major.DemoForMajor.repository.AbsentRepository;
import com.example.major.DemoForMajor.repository.MessageRepository;
import com.example.major.DemoForMajor.repository.PresentRepository;
import com.example.major.DemoForMajor.service.MessageService;
import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

@Controller
public class SendMessageController {
	
	@Autowired
	private AbsentRepository arep;
	@Autowired
	private MessageRepository mrep;
	@Autowired
	private MessageService mser;
	@Autowired
	private PresentRepository prep;
	
	private final static String ACCOUNT_SID = "AC83a4c97db166b1864ea7a25e233f7f80";
	private final static String AUTH_ID = "d18e4dc31b2b716f178bb21efd117064";
	
	static {
		Twilio.init(ACCOUNT_SID,AUTH_ID);
	}
	
	@RequestMapping("/sendp")
	public String sendMessageToPresentees()
	{
		List<Present> present = this.prep.findAll();
		for(Present i : present)
		{
			String message = "Dear Parent, Your Ward bearing Roll No: "+i.getRollno()+" is Present";
			Message.creator(new PhoneNumber("+917013325444"),new PhoneNumber("+14243519361"),message).create();
		}
		return "redirect:/home";

	}
	
	@RequestMapping("/send")
	public String sendMessageToAbsentees()
	{
		
		List<com.example.major.DemoForMajor.model.Message> ob = this.mrep.findAll();
		
		ob.get(0).setSentMessage("true");
		//mser.saveToDb(ob.get(0));
		String temp = ob.get(0).getSentMessage();
		System.out.print("SendMessageController "+ temp);
		
		List<Absent> absent = this.arep.findAll();
		for(Absent i: absent)
		{
			String message = "Dear Parent, Your Ward bearing Roll No: "+i.getRollno()+" is absent";
			Message.creator(new PhoneNumber("+917013325444"),new PhoneNumber("+14243519361"),message).create();
		}
		MessageModel otpsystem = new MessageModel();
		//otpsystem.setMobileNumber(mobilenumber);
//		otpsystem.setOtp(String.valueOf(((int)(Math.random()*(10000 - 1000)))+1000));
//		otpsystem.setExpirydate(System.currentTimeMillis()+60000);
		//msg_data.put(mobilenumber,otpsystem);	
		//Message.creator(new PhoneNumber("+917013325444"),new PhoneNumber("+14243519361"),"Pass Registration Successful. Your Application is ").create();
		//return new ResponseEntity<Object>("OTP is sent successfully",HttpStatus.OK);
		return "redirect:/home";
	}

}
