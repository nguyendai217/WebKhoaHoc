package com.dainguyen.Model;

public class CourseInfo {
	private int course_id;
	private String coursename;
	private String courseimage;
	private float fee;
	private String courseinfo;
	
	public CourseInfo() {
		
	}
	public CourseInfo(String courseinfo)
	{
		this.courseinfo=courseinfo;
	}
	public String getCourseinfo() {
		return courseinfo;
	}
	public void setCourseinfo(String courseinfo) {
		this.courseinfo = courseinfo;
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
	public float getFee() {
		return fee;
	}
	public void setFee(float fee) {
		this.fee = fee;
	}

	
	
}
