package com.demo.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.demo.model.Employee;

@Repository
public class EmployeeDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	//create
	
	public int save(Employee employee)
	{
		String sql="INSERT INTO Employee(name,salary,designation) values(?,?,?)";
		return jdbcTemplate.update(sql, employee 	 .getName(),employee.getSalary(),
				employee.getDesignation());
	}
	
	//read
	
    public List<Employee> getEmployees() {
        return jdbcTemplate.query("SELECT * FROM Employee", new RowMapper<Employee>() {
            public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
                Employee employee = new Employee();
                employee.setId(rs.getInt("id"));
                employee.setName(rs.getString("name"));
                employee.setSalary(rs.getDouble("salary")); 
                employee.setDesignation(rs.getString("designation"));
                System.out.println("Employee"+employee);
                return employee;
            }
        });
    }

	public Employee getEmployeeById(int id) {
		String sql = "SELECT * FROM Employee WHERE id = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new RowMapper<Employee>() {
            public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
                Employee employee = new Employee();
                employee.setId(rs.getInt("id"));
                employee.setName(rs.getString("name"));
                employee.setSalary(rs.getDouble("salary"));
                employee.setDesignation(rs.getString("designation"));
                return employee;
            }
        });

	}

	public void update(Employee employee) {
        String sql = "UPDATE Employee SET name = ?, salary = ?, designation = ? WHERE id = ?";
        jdbcTemplate.update(sql, employee.getName(), employee.getSalary(), employee.getDesignation(), employee.getId());

	}

	public void delete(int id) {
		String sql = "DELETE FROM Employee WHERE id = ?";
        jdbcTemplate.update(sql, id);

		
	}

}
