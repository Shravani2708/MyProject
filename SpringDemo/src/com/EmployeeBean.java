package com;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class EmployeeBean 
{
	@Bean(name="emp")
	public Employee empBean()
	{
		System.out.println("---Bean Created---");
		return new Employee();
	}
}