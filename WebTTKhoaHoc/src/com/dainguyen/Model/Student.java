package com.dainguyen.Model;

public class Student {
	private int sc_id;
	private String name;
	private String birthday;
	private String sex;
	private String phonenumber;
	private String mail;
	private String avatar;
	private float point;
	private boolean confirm;
	private String registeredClass;
	private String registeredCourse;
	
	public Student() {}
	public Student(int sc_id, String name, String birthday, String sex, String phonenumber, String mail,
			 String avatar, float point, boolean confirm) {
		this.sc_id = sc_id;
		this.name = name;
		this.birthday = birthday;
		this.sex = sex;
		this.phonenumber = phonenumber;
		this.mail = mail;
		this.avatar = avatar;
		this.point = point;
		this.confirm = confirm;
	}
	public Student(int sc_id, String name, String phonenumber, String mail,
			 String avatar, boolean confirm, String registeredClass, String registeredCourse) {
		this.sc_id = sc_id;
		this.name = name;
		this.phonenumber = phonenumber;
		this.mail = mail;
		this.avatar = avatar;
		this.confirm = confirm;
		this.registeredClass = registeredClass;
		this.registeredCourse = registeredCourse;
	}
	
	public int getSc_id() {
		return sc_id;
	}
	public void setSc_id(int sc_id) {
		this.sc_id = sc_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public float getPoint() {
		return point;
	}
	public void setPoint(float point) {
		this.point = point;
	}
	public boolean isConfirm() {
		return confirm;
	}
	public void setConfirm(boolean confirm) {
		this.confirm = confirm;
	}
	public String getRegisteredClass() {
		return registeredClass;
	}
	public void setRegisteredClass(String registeredClass) {
		this.registeredClass = registeredClass;
	}
	public String getRegisteredCourse() {
		return registeredCourse;
	}
	public void setRegisteredCourse(String registeredCourse) {
		this.registeredCourse = registeredCourse;
	}
	
}
