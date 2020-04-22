package com.dainguyen.Model;

public class Teacher {
	private int tc_id;
	private String name;
	private String mail;
	
	public Teacher() {}
	public Teacher(int tc_id, String name, String mail) {
		this.tc_id = tc_id;
		this.name = name;
		this.mail = mail;
	}
	
	public int getTc_id() {
		return tc_id;
	}
	public void setTc_id(int tc_id) {
		this.tc_id = tc_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	
}
