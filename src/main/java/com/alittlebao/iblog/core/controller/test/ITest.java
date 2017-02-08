package com.alittlebao.iblog.core.controller.test;

import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alittlebao.iblog.core.domain.SysTest;
import com.alittlebao.iblog.core.service.SysTestService;

@Controller
public class ITest {

	@Resource
	private SysTestService sysTestService;

	@RequestMapping(path = "/itest/find_record")
	public void findRecord(Model model) {
		SysTest sysTest = sysTestService.findById(2);
		System.out.println(sysTest);

	}

	@RequestMapping(path = "/itest/find_records")
	public void findRecords(Model model) {
		List<Integer> ids = Arrays.asList(1, 2);
		List<SysTest> sysTests = sysTestService.findByIds(ids);
		for (SysTest sysTest : sysTests) {
			System.out.println(sysTest);
		}

	}

	@RequestMapping(path = "/itest/add_record")
	public void addRecord(Model model) {
		SysTest st = new SysTest(3, "huang", new Date());
		sysTestService.addRecord(st);
		System.out.println("OVER");
	}

	@RequestMapping(path = "/itest/add_records")
	public void addRecords(Model model) {
		Map<String, Object> maps = new HashMap<>();
		maps.put("fields", "name,bir_date");
		maps.put("tb2", "sys_test2");
		maps.put("fields2", "name,bir_date");
		maps.put("tb2Condition", "id>2");

		sysTestService.addRecords(maps);
		System.out.println("OVER");
	}

	@RequestMapping(path = "/itest/update_record")
	public void updateRecord() {
		SysTest st = new SysTest();
		st.setId(2);
		st.setName("huang");

		sysTestService.updateRecord(st);
		System.out.println("OVER");
	}

	@RequestMapping(path = "/itest/delete_record")
	public void deleteRecord() {
		sysTestService.deleteById(3);
		System.out.println("OVER");
	}

	@RequestMapping(path = "/itest/delete_records")
	public void deleteRecords() {
		sysTestService.deleteByIds(Arrays.asList(5, 6));
		System.out.println("OVER");
	}

}
