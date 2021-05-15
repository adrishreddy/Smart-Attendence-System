package com.example.major.DemoForMajor.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.major.DemoForMajor.model.Message;

@Repository
public interface MessageRepository extends  JpaRepository<Message,String> {

	public List<Message> findAll();
}
