package com.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.demo.dao.EmployeeDao;
import com.demo.model.Employee;

@Controller
public class EmployeeController {
	
		@Autowired
		private EmployeeDao employeeDao;

		@GetMapping("/employees")
	    public String viewEmployees(Model model) {
	        List<Employee> list = employeeDao.getEmployees();
	        for(Employee emp:list) {
	        System.out.println("ID: " + emp.getId() + ", Salary: " + emp.getSalary());
	        }
	        model.addAttribute("list1", list);
	        return "view_employees";
	    }

	    
		  @GetMapping("/employee/{id}")
		    public String viewEmployee(@PathVariable int id, Model model) {
		        Employee employee = employeeDao.getEmployeeById(id);
		        model.addAttribute("employee", employee);
		        return "view_employee";
		    }

		    @GetMapping("/employee/new")
		    public String newEmployeeForm(Model model) {
		        model.addAttribute("employee", new Employee());
		        return "new_employee";
		    }

		    @PostMapping("/employee")
		    public String saveEmployee(@ModelAttribute Employee employee) {
		        employeeDao.save(employee);
		        return "redirect:/employees";
		    }
		    
		    @GetMapping("/employee/edit/{id}")
		    public String editEmployeeForm(@PathVariable int id, Model model) {
		        Employee employee = employeeDao.getEmployeeById(id);
		        model.addAttribute("employee", employee);
		        return "edit_employee";
		    }

		    @PostMapping("/employee/update")
		    public String updateEmployee(@ModelAttribute Employee employee) {
		        employeeDao.update(employee);
		        return "redirect:/employees";
		    }

		    @GetMapping("/employee/delete/{id}")
		    public String deleteEmployee(@PathVariable int id) {
		        employeeDao.delete(id);
		        return "redirect:/employees";
		    }

		
}
