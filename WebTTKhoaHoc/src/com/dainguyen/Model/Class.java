package com.dainguyen.Model;

public class Class {
	private int class_id;
	private String classname;
	private String startday;
	private String endday;
	private String timestudy;
	private String location;
	private int number_of_students;
	private String testday;
	private int course_id;
	private String coursename;
	
	public Class() {}
	public Class(int class_id, String classname, String startday, String endday, String timestudy, String location,
			 int number_of_students, String testday, int course_id) {
		this.class_id = class_id;
		this.classname = classname;
		this.endday = endday;
		this.timestudy = timestudy;
		this.location = location;
		this.number_of_students = number_of_students;
		this.testday = testday;
		this.course_id = course_id;
	}
	public Class(int class_id, String classname, String startday, String endday, String timestudy, String location,
			 int number_of_students, String testday, int course_id, String coursename) {
		this.class_id = class_id;
		this.classname = classname;
		this.endday = endday;
		this.timestudy = timestudy;
		this.location = location;
		this.number_of_students = number_of_students;
		this.testday = testday;
		this.course_id = course_id;
		this.coursename = coursename;
	}
	
	public String getCoursename() {
		return coursename;
	}
	public void setCoursename(String coursename) {
		this.coursename = coursename;
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
	public String getStartday() {
		return startday;
	}
	public void setStartday(String startday) {
		this.startday = startday;
	}
	public String getEndday() {
		return endday;
	}
	public void setEndday(String endday) {
		this.endday = endday;
	}
	public String getTimestudy() {
		return timestudy;
	}
	public void setTimestudy(String timestudy) {
		this.timestudy = timestudy;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public int getNumber_of_students() {
		return number_of_students;
	}
	public void setNumber_of_students(int number_of_students) {
		this.number_of_students = number_of_students;
	}
	public String getTestday() {
		return testday;
	}
	public void setTestday(String testday) {
		this.testday = testday;
	}
	public int getCourse_id() {
		return course_id;
	}
	public void setCourse_id(int course_id) {
		this.course_id = course_id;
	}
	
}
