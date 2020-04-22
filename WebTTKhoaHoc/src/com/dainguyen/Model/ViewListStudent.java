package com.dainguyen.Model;

public class ViewListStudent {

	private String account_id;
	private String name;
	private String birthday; 
	private String sex; 
	private String mail;  
	private String point;
	public ViewListStudent(){
		
	}
	public ViewListStudent(String account_id,String name, String birthday, String sex, String mail, String point){
		
		this.account_id=account_id;
		this.name=name;
		this.birthday=birthday;
		this.sex=sex;
		this.mail=mail;
		this.point=point;
	}
	
	public String getAccount_id() {
		return account_id;
	}
	public void setAccount_id(String account_id) {
		this.account_id = account_id;
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
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getPoint() {
		return point;
	}
	public void setPoint(String point) {
		this.point = point;
	}
	
}
