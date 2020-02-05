package com.nexture.ojt.dao;

import java.util.List;
import java.util.Map;

import com.nexture.ojt.dto.EmployeeDTO;

public interface EmployeeMapper {

	int login(Map<String, String> map);
	int signup(EmployeeDTO employee);
	EmployeeDTO selectEmployee(String em_number);
	List<EmployeeDTO>listEmployee();
}
