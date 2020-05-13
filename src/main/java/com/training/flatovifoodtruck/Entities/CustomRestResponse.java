package com.training.flatovifoodtruck.Entities;

import java.util.ArrayList;
import java.util.List;

public class CustomRestResponse<T> {
	private List<T> data = new ArrayList<T>();
	private int count;
	private int currentPage;
	public List<T> getData() {
		return data;
	}
	public void setData(List<T> data) {
		this.data = data;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public CustomRestResponse(List<T> data, int count, int currentPage) {
		super();
		this.data = data;
		this.count = count;
		this.currentPage = currentPage;
	}
	
}
