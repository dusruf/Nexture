package com.nexture.ojt.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nexture.ojt.dto.EmployeeDTO;

@Repository
public class EmployeeRepository {

	@Autowired
	SqlSession session;
	
	public int login(String EM_number,String password) {
		EmployeeMapper mapper = session.getMapper(EmployeeMapper.class);
		Map<String, String> map = new HashMap<>();
		map.put("EM_number", EM_number);
		map.put("password",password);
		return mapper.login(map);
	}
	
	public int signup(EmployeeDTO employee) {
		System.out.println(employee);
		EmployeeMapper mapper = session.getMapper(EmployeeMapper.class);
		return mapper.signup(employee);
	}
	
	public EmployeeDTO selectEmployee(String em_number) {
		EmployeeMapper mapper = session.getMapper(EmployeeMapper.class);
		EmployeeDTO temp = mapper.selectEmployee(em_number);
		return temp;
	}
	
	public List<EmployeeDTO>listEmployee(){
		EmployeeMapper mapper = session.getMapper(EmployeeMapper.class);
		return mapper.listEmployee();
	}
	
}
