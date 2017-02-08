package com.alittlebao.iblog.core.domain;

import java.text.SimpleDateFormat;
import java.util.Date;

public class SysTest {
	private int id;
	private String name;
	private Date birDate;

	public SysTest() {
	}

	public SysTest(int id, String name, Date birDate) {
		this.id = id;
		this.name = name;
		this.birDate = birDate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getBirDate() {
		return birDate;
	}

	public void setBirDate(Date birDate) {
		this.birDate = birDate;
	}

	@Override
	public String toString() {
		return "SysTest [id=" + id + ", name=" + name + ", birDate="
				+ new SimpleDateFormat("yyyy-MM-dd").format(birDate) + "]";
	}

}
