package com.example.major.DemoForMajor.model;


import javax.persistence.Entity;
import javax.persistence.Id;

import com.example.major.DemoForMajor.repository.TeamdetailsRepository;

import lombok.Data;
import lombok.Getter;

@Entity
@Data
public class Present {
	@Id
	@Getter
	private String rollno;
	public String getRollno() {
		return rollno;
	}
	public void setRollno(String rollno) {
		this.rollno = rollno;
	}
	
	private String date;
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}

}