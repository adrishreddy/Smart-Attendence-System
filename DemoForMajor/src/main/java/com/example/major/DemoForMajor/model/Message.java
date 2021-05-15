package com.example.major.DemoForMajor.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class Message {
	
	@Id
	private String sentMessage;

	public String getSentMessage() {
		return sentMessage;
	}

	public void setSentMessage(String sentMessage) {
		this.sentMessage = sentMessage;
	}
	

}
