package com.dainguyen.Model;

public class Course {
	private int course_id;
	private String coursename;
	private String courseimage;
	private String description;
	private String info;
	private double fee;
	private int topic_id;
	
	public Course() {}
	public Course(int course_id, String coursename, String courseimage, String description, String info,
			double fee, int topic_id) {
		this.course_id = course_id;
		this.coursename = coursename;
		this.courseimage = courseimage;
		this.description = description;
		this.info = info;
		this.fee = fee;
		this.topic_id = topic_id;
	}
	public Course(int course_id, String coursename, String courseimage, String info, double fee) {
		this.course_id = course_id;
		this.coursename = coursename;
		this.courseimage = courseimage;
		this.info = info;
		this.fee = fee;
	}
	public Course(String coursename)
	{
		this.coursename=coursename;
	}
	
	public int getCourse_id() {
		return course_id;
	}
	public void setCourse_id(int course_id) {
		this.course_id = course_id;
	}
	public String getCoursename() {
		return coursename;
	}
	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}
	public String getCourseimage() {
		return courseimage;
	}
	public void setCourseimage(String courseimage) {
		this.courseimage = courseimage;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public double getFee() {
		return fee;
	}
	public void setFee(double fee) {
		this.fee = fee;
	}
	public int getTopic_id() {
		return topic_id;
	}
	public void setTopic_id(int topic_id) {
		this.topic_id = topic_id;
	}
	
	
}
