package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.entity.Student;
import com.example.demo.service.IStudentService;

@Controller
public class StudentController {

	@Autowired
	IStudentService studentService;
	
	@RequestMapping("/getDetails/{id}")
	public String getStudentDetails(Model m , @PathVariable int id) {
		m.addAttribute("student", studentService.getStudent(id));
		return "studentDetails";
	}
	
	@RequestMapping("/getStudents")
	public String getStudents(Model m) {
		m.addAttribute("students", studentService.getStudents());
		return "studentList";
	}
	
	@RequestMapping("/deleteStudent/{id}")
	public String deleteStudent(@PathVariable int id) {
		studentService.deleteStudent(id);
		return "redirect:/getStudents";
	}
	
	@RequestMapping("/addStudent")
	public String getStudentForm(Model m) {
		m.addAttribute("student", new Student());
		return "studentForm";
	}
	
	@RequestMapping("/updateStudent/{id}")
	public String updateStudent(Model m, @PathVariable int id) {
		m.addAttribute("student", studentService.getStudent(id));
		return "studentForm";
	}
	
	@RequestMapping(value="/saveStudent",method=RequestMethod.POST)
	public String saveStudent(@ModelAttribute("student")Student student) {
		studentService.saveStudent(student);
		return "redirect:/getStudents";
	}
}
