package com.example.major.DemoForMajor.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Data;
import lombok.Getter;

@Entity
@Data
public class Absent {

	@Id
	@Getter
	private String rollno;

	public String getRollno() {
		return rollno;
	}

	public void setRollno(String rollno) {
		this.rollno = rollno;
	}

//	public Absent(String rollno) {
//		super();
//		this.rollno = rollno;
//	}
//	
//	public  String getRollno() {
//		return this.rollno;
//	}
}
