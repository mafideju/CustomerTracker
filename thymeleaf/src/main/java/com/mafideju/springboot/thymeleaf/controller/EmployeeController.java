package com.mafideju.springboot.thymeleaf.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mafideju.springboot.thymeleaf.entity.Employee;
import com.mafideju.springboot.thymeleaf.service.EmployeeService;

@Controller
@RequestMapping("/employees")
public class EmployeeController {

	private EmployeeService employeeService;
	
	public EmployeeController(EmployeeService theEmployeeService) {
		employeeService = theEmployeeService;
	}

	@GetMapping("/list")
	public String listEmployees(Model theModel) {
		
		List<Employee> theEmployees = employeeService.findAll();
		
		theModel.addAttribute("employees", theEmployees);
		
		return "list-employees";
	}
	
	@GetMapping("/showAddForm")
	public String showAddForm(Model theModel) {
		
		Employee employee = new Employee();
		
		theModel.addAttribute("employee", employee);
		
		return "employee-form";
	}
	
	@PostMapping("/save")
	public String saveEmployee(@ModelAttribute("employee") Employee employee) {
		
		employeeService.save(employee);
		
		return "redirect:/employees/list";
	}
	
	@GetMapping("/showUpdateForm")
	public String updateEmployee(@RequestParam("employeeId") int employeeId, Model model) {
		
		Employee employee = employeeService.findById(employeeId);
		
		model.addAttribute("employee", employee);
		
		return "employee-form";
	}
	
	
	@GetMapping("/delete")
	public String delete(@RequestParam("employeeId") int employeeId) {
		
		employeeService.deleteById(employeeId);
		
		return "redirect:/employees/list";
	}
}










