package com.dainguyen.Model;

public class LichKhaiGiang {
	private int class_id;
	private String classname;
	private String timestudy;
	private String startday;
	private String location;
	
	public LichKhaiGiang() {}
	public LichKhaiGiang(int class_id,String classname,String timestudy,String startday,String location) {
	this.class_id=class_id;
	this.classname=classname;
	this.timestudy=timestudy;
	this.startday=startday;
	this.location=location;
	}
	
	public int getClass_id() {
		return class_id;
	}
	public void setClass_id(int class_id) {
		this.class_id = class_id;
	}
	public String getClassname() {
		return classname;
	}
	public void setClassname(String classname) {
		this.classname = classname;
	}
	public String getTimestudy() {
		return timestudy;
	}
	public void setTimestudy(String timestudy) {
		this.timestudy = timestudy;
	}
	public String getStartday() {
		return startday;
	}
	public void setStartday(String startday) {
		this.startday = startday;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	
	
}
