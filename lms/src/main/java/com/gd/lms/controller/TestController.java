package com.gd.lms.controller;


import java.util.List;
import java.util.Map;

import com.gd.lms.repository.TestRepository;
import net.bytebuddy.implementation.bind.MethodDelegationBinder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.gd.lms.commons.TeamColor;
import com.gd.lms.service.TestService;
import com.gd.lms.vo.Test;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestParam;

import javax.management.ValueExp;

@Slf4j
@Controller
public class TestController {
	
	@Autowired TestService testService;
	@Autowired
	TestRepository repository;
	
	// 수강된 강의 리스트
	@GetMapping("/test/testList")
	public String testList(Model model) {
	
		List<Map<String,Object>> subjectApproveList = testService.getSubjectApproveList();
		model.addAttribute("subjectApproveList",subjectApproveList);
			
		//승인된 과목정보들이 다 들어가있음
		log.debug(TeamColor.JJY+"subjectApproveList 값 : " + model);		

		 return "/test/testList";
	}

	
	//시험지출제하기(1)Form
	@GetMapping("/test/multipleTest")
	public String addTest(@RequestParam("subjectApproveNo") int subjectApproveNo,Model model){
		model.addAttribute("subjectApproveNo",subjectApproveNo);
	return "/test/multipleTest";	
	}
	
	//시험지출제하기(1)Action
	@PostMapping("/addTest")
	public String addTest(Model model,  int subjectApproveNo,
						   String testName) {

		Test testt = repository.findByTestNameAndSubjectApproveSubjectApproveNo(testName, subjectApproveNo);
		log.debug(TeamColor.JJY+"test checking 값 : " + subjectApproveNo + "  "+testName);
		log.debug(TeamColor.JJY+"test checking 값 : " + testt);
		if(testt == null){
			testService.addTest(subjectApproveNo, testName);
		}else{

		}

		log.debug(TeamColor.JJY+"insertTest 값 : " + model);
		
		return "/test/multipleTest";
	}
	
	//시험지출제하기(1)Form
	@GetMapping("/test/multipleTestForm")
	public String multipleTestForm(){
		
	return "/test/multipleTestForm";	
	}
	
	
	
	

}
