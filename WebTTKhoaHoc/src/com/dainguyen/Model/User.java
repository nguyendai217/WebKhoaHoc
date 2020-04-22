package com.dainguyen.Model;


public class User {
	private int account_id;
	private String accountname;
	private String password;
	private String name;
	private String birthday;
	private String sex;
	private String mail;
	private String phonenumber;
	private String avatar;
	private int role_id;
	private String rolename;

	public User() {}
	
	public User(String accountname, String password) {
		this.accountname = accountname;
		this.password = password;
	}
	public User(int account_id, String accountname, String password, String name, String birthday, String sex,
			String mail, String phonenumber, String avatar, int role_id) {
		this.account_id = account_id;
		this.accountname = accountname;
		this.password = password;
		this.name = name;
		this.birthday = birthday;
		this.sex = sex;
		this.mail = mail;
		this.phonenumber = phonenumber;
		this.avatar = avatar;
		this.role_id = role_id;
	}
	public User(int account_id, String accountname, String password, String name, String birthday, String sex,
			String mail, String phonenumber, String avatar, String rolename) {
		this.account_id = account_id;
		this.accountname = accountname;
		this.password = password;
		this.name = name;
		this.birthday = birthday;
		this.sex = sex;
		this.mail = mail;
		this.phonenumber = phonenumber;
		this.avatar = avatar;
		this.rolename = rolename;
	}
	public User(int account_id, String accountname, String password, String name, String birthday, String sex,
			String mail, String phonenumber, String avatar) {
		this.account_id = account_id;
		this.accountname = accountname;
		this.password = password;
		this.name = name;
		this.birthday = birthday;
		this.sex = sex;
		this.mail = mail;
		this.phonenumber = phonenumber;
		this.avatar = avatar;
	}
	public User(int account_id, String name, String birthday, String sex,
			String mail, String phonenumber, String avatar) {
		this.account_id = account_id;
		this.name = name;
		this.birthday = birthday;
		this.sex = sex;
		this.mail = mail;
		this.phonenumber = phonenumber;
		this.avatar = avatar;
	}
	public int getAccount_id() {
		return account_id;
	}
	public void setAccount_id(int account_id) {
		this.account_id = account_id;
	}
	public String getAccountname() {
		return accountname;
	}
	public void setAccountname(String accountname) {
		this.accountname = accountname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public int getRole_id() {
		return role_id;
	}
	public void setRole_id(int role_id) {
		this.role_id = role_id;
	}
	public String getRolename() {
		return rolename;
	}
	public void setRolename(String rolename) {
		this.rolename = rolename;
	}
	
}
