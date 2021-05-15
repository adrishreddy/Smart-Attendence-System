package com.example.major.DemoForMajor.repository;



import org.springframework.stereotype.Repository;

import com.example.major.DemoForMajor.model.Absent;
import com.example.major.DemoForMajor.model.Present;

import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;
@Repository
public interface PresentRepository extends JpaRepository<Present,String> {
	
	public List<Present> findAll();
	public Present findByRollno(String rollno);
}
