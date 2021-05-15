package com.example.major.DemoForMajor.repository;

import org.springframework.stereotype.Repository;

import com.example.major.DemoForMajor.model.Absent;


import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;
@Repository
public interface AbsentRepository extends JpaRepository<Absent,String> {
	
	public List<Absent> findAll();
	

}
