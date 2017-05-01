package com.alittlebao.iblog.common.utils;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;

/**
 * 分页对象
 * @author Alibao
 * @time 2017年2月9日 下午3:33:11
 */
public class Pagination<T> implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	// -- 公共变量 --//
	public static final String ASC = "asc";
	public static final String DESC = "desc";

	// -- 分页参数 --//
	protected int pageNo = 1;
	protected int pageSize = 20;// 默认每页20项
	protected String orderBy = null;
	protected String order = null;
	protected boolean autoCount = true;
	protected int beginNo; // 结果集中数据的起始位置
	protected long endNo; // 结果集中数据的终止位置
	protected long totalCount = -1;

	// -- 返回结果 --//
	protected List<T> result = new ArrayList<>();

	public Pagination() {
	}

	public Pagination(int pageSize) {
		this.pageSize = pageSize;
	}

	// -- 设置参数 --//

	/**
	 * 设置页数
	 * @param pageNo 页号
	 */
	public void setPageNo(final int pageNo) {
		if (pageNo < 1) {
			this.pageNo = 1;
		}
		this.pageNo = pageNo;
	}

	/**
	 * 设置每页条数
	 * @param pageSize 每页条数
	 */
	public void setPageSize(final int pageSize) {
		if (pageSize < 1) {
			this.pageSize = 1;
		}
		this.pageSize = pageSize;
	}

	/**
	 * 设置返回结果集
	 */
	public void setResult(final List<T> result) {
		this.result = result;
	}

	/**
	 * 设置总条数
	 */
	public void setTotalCount(final long totalCount) {
		this.totalCount = totalCount;
	}

	// -- 获取变量 --//

	/**
	 * @param thePageNo 页号
	 * @return 返回分页对象
	 */
	public Pagination<T> pageNo(final int thePageNo) {
		setPageNo(thePageNo);
		return this;
	}

	/**
	 * @param thePageSize 每页记录数
	 * @return 返回分页对象
	 */
	public Pagination<T> pageSize(final int thePageSize) {
		setPageSize(thePageSize);
		return this;
	}

	public long getTotalCount() {
		return totalCount;
	}

	public int getPageNo() {
		return pageNo;
	}

	public int getPageSize() {
		return pageSize;
	}

	/**
	 * 返回分页数据的起始位置
	 */
	public int getBeginNo() {
		return beginNo = (pageNo - 1) * pageSize + 1;
	}

	/**
	 * 返回分页数据的结束位置
	 */
	public long getEndNo() {
		endNo = beginNo + pageSize - 1;
		if (endNo > totalCount) {
			endNo = totalCount;
		}
		return endNo;
	}

	public List<T> getResult() {
		return result;
	}

	/**
	 * 获得排序字段,无默认值.多个排序字段时用','分隔.
	 */
	public String getOrderBy() {
		return orderBy;
	}

	/**
	 * 设置排序字段,多个排序字段时用','分隔.
	 */
	public void setOrderBy(final String orderBy) {
		this.orderBy = orderBy;
	}

	/**
	 * @param theOrderBy
	 * @return 返回分页对象
	 */
	public Pagination<T> orderBy(final String theOrderBy) {
		setOrderBy(theOrderBy);
		return this;
	}

	/**
	 * 获得排序方向.
	 */
	public String getOrder() {
		return order;
	}

	/**
	 * 设置排序方式向.
	 * 
	 * @param order 可选值为desc或asc,多个排序字段时用','分隔.
	 */
	public void setOrder(final String order) {
		// System.out.println("odrs:::"+order);

		// 检查order字符串的合法值
		String[] orders = StringUtils.split(StringUtils.lowerCase(order), ',');
		for (String orderStr : orders) {
			// System.out.println("odr:::"+orderStr);
			if (!StringUtils.equals(DESC, orderStr) && !StringUtils.equals(ASC, orderStr)) {
				throw new IllegalArgumentException("排序方向" + orderStr + "不是合法值");
			}
		}

		this.order = StringUtils.lowerCase(order);
	}

	public Pagination<T> order(final String theOrder) {
		setOrder(theOrder);
		return this;
	}

	/**
	 * 是否已设置排序字段,无默认值.
	 */
	public boolean isOrderBySetted() {
		return (StringUtils.isNotBlank(orderBy) && StringUtils.isNotBlank(order));
	}

	/**
	 * 查询对象时是否自动另外执行count查询获取总记录数, 默认为false.
	 */
	public boolean isAutoCount() {
		return autoCount;
	}

	public boolean recount() {
		return autoCount && totalCount == -1;
	}

	/**
	 * 查询对象时是否自动另外执行count查询获取总记录数.
	 */
	public void setAutoCount(final boolean autoCount) {
		this.autoCount = autoCount;
	}

	public Pagination<T> autoCount(final boolean theAutoCount) {
		setAutoCount(theAutoCount);
		return this;
	}

	/**
	 * 根据pageSize与totalCount计算总页数, 默认值为-1.
	 */
	public long getTotalPages() {
		if (totalCount < 0) {
			return -1;
		}

		long count = totalCount / pageSize;
		if (totalCount % pageSize > 0) {
			count++;
		}
		return count;
	}

	/**
	 * 是否还有下一页.
	 */
	public boolean isHasNext() {
		return (pageNo + 1 <= getTotalPages());
	}

	/**
	 * 取得下页的页号, 序号从1开始. 当前页为尾页时仍返回尾页序号.
	 */
	public int getNextPage() {
		if (isHasNext()) {
			return pageNo + 1;
		} else {
			return pageNo;
		}
	}

	/**
	 * 是否还有上一页.
	 */
	public boolean isHasPre() {
		return (pageNo - 1 >= 1);
	}

	/**
	 * 取得上页的页号, 序号从1开始. 当前页为首页时返回首页序号.
	 */
	public int getPrePage() {
		if (isHasPre()) {
			return pageNo - 1;
		} else {
			return pageNo;
		}
	}

}
