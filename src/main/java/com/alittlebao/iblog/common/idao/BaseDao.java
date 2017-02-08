package com.alittlebao.iblog.common.idao;

import java.util.List;
import java.util.Map;

/**
 * 
 * @author Alibao
 * @time 2017年1月13日 下午3:49:27
 * @param <T>
 */
public interface BaseDao<T> {


	/**
	 * 添加记录
	 * 
	 * @param object
	 */
	void addRecord(T bean);
	
	/**
	 * 根据另一张表快速批量添加记录
	 * “INSERT INTO tab1(fld_id) SELECT tab2.fld_order_id
	 *     FROM tb2 WHERE tb2.fld_order_id>100”
	 * tb1: tab1(在xml mapper里面，不传)
	 * fields: fld_id(传 id，name等，多个用逗号隔开)
	 * tb2: tab2
	 * fields2: tab2.fld_order_id(同fields)
	 * tb2Condition: tb2.fld_order_id>100
	 * @param maps
	 */
	void addRecords(Map<String, Object> maps);
	
	/**
	 * 根据id删除记录
	 * 
	 * @param id
	 */
	void deleteById(Integer id);

	/**
	 * 根据id批量删除
	 * 
	 * @param id
	 */
	void deleteByIds(List<Integer> id);
	

	/**
	 * 更新记录
	 * 
	 * @param maps
	 */
	void updateRecord(T bean);

	/**
	 * 根据id查询记录
	 * 
	 * @param maps
	 * @return
	 */
	T findById(Integer id);

	/**
	 * 根据ids批量查询记录
	 * 
	 * @param ids
	 * @return
	 */
	List<T> findByIds(List<Integer> ids);

	/**
	 * 条件查询记录
	 * 
	 * @param maps
	 *            若maps为null,表示查询全部
	 * @return 查询结果
	 */
	List<T> findRecord(Map<String, Object> maps);

	/**
	 * 查询总记录数
	 */
	long findTotalCount();
}
