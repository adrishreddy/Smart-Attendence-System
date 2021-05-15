package com.example.major.DemoForMajor.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.example.major.DemoForMajor.model.Teamdetails;

@Repository
public interface TeamdetailsRepository extends JpaRepository<Teamdetails,String> {
	
	public List<Teamdetails> findAll();
	public Teamdetails findByRollno(String rollno);

}
