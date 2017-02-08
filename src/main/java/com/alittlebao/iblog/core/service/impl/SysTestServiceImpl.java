package com.alittlebao.iblog.core.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.alittlebao.iblog.core.dao.test.SysTestDao;
import com.alittlebao.iblog.core.domain.SysTest;
import com.alittlebao.iblog.core.service.SysTestService;

@Service(value = "sysTestService")
public class SysTestServiceImpl implements SysTestService {

	@Resource
	private SysTestDao sysTestDao;

	@Override
	public void addRecord(SysTest st) {
		sysTestDao.addRecord(st);
	}

	@Override
	public void updateRecord(SysTest bean) {
		sysTestDao.updateRecord(bean);
	}

	@Override
	public SysTest findById(Integer id) {

		return sysTestDao.findById(id);
	}

	@Override
	public List<SysTest> findByIds(List<Integer> ids) {
		return sysTestDao.findByIds(ids);
	}

	@Override
	public List<SysTest> findRecord(Map<String, Object> maps) {

		return sysTestDao.findRecord(maps);
	}

	@Override
	public void deleteById(Integer id) {
		sysTestDao.deleteById(id);
	}

	@Override
	public void deleteByIds(List<Integer> ids) {
		sysTestDao.deleteByIds(ids);
	}

	@Override
	public void addRecords(Map<String, Object> maps) {
		sysTestDao.addRecords(maps);

	}

}
