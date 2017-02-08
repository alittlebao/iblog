package com.alittlebao.iblog.core.service;

import java.util.List;
import java.util.Map;

import com.alittlebao.iblog.core.domain.SysTest;

public interface SysTestService {

	/**
	 * 添加记录
	 * 
	 * @param maps
	 */
	void addRecord(SysTest st);
	
	void addRecords(Map<String, Object> maps);
	
	/**
	 * 根据id删除记录
	 * 
	 * @param id
	 */
	void deleteById(Integer id);

	/**
	 * 根据ids批量删除数据
	 * 
	 * @param ids
	 */
	void deleteByIds(List<Integer> ids);


	/**
	 * 根据id更新记录
	 * 
	 * @param maps
	 */
	void updateRecord(SysTest bean);

	/**
	 * 根据id查找记录
	 * 
	 * @param maps
	 * @return
	 */
	SysTest findById(Integer id);

	/**
	 * 根据ids批量查找记录
	 * 
	 * @param ids
	 * @return
	 */
	List<SysTest> findByIds(List<Integer> ids);

	/**
	 * 条件查找记录
	 * 
	 * @param maps
	 * @return
	 */
	List<SysTest> findRecord(Map<String, Object> maps);

}
