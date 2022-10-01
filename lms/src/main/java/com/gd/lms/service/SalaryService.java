package com.gd.lms.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gd.lms.commons.TeamColor;
import com.gd.lms.mapper.SalaryMapper;
import com.gd.lms.vo.Employee;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@Transactional
public class SalaryService {

	@Autowired private SalaryMapper salaryMapper;
	
	// 연봉 목록
	public List<Map<String, Object>> getSalaryList(){
		log.debug(TeamColor.LJE + "SalaryService getSalaryList");

		return salaryMapper.selectSalaryList();
	}
	
	// 연봉 수정
	public int modifySalaryEmployee(Employee employee) {
		
		log.debug(TeamColor.JJY + "SalaryService modifySalaryEmployee");
		return salaryMapper.updateSalaryEmployee(employee);
	}
}
