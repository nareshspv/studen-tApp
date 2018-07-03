package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Student;
import com.example.demo.repository.IStudentRepository;

@Service
public class StudentService implements IStudentService{
	
	@Autowired
	IStudentRepository studentRepository;

	public Student getStudent(int id) {
		return studentRepository.getOne(id);
	}

	@Override
	public List<Student> getStudents() {
		
		return studentRepository.findAll();
	}

	@Override
	public void deleteStudent(int id) {

		studentRepository.deleteById(id);
	}

	@Override
	public void saveStudent(Student student) {
		studentRepository.save(student);
		
	}
}
