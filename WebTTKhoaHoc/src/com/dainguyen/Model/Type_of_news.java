package com.dainguyen.Model;

public class Type_of_news {
	
	private int type_id; 
	private String typename;
	public Type_of_news(){
	}
	public Type_of_news(int type_id, String typename){
		this.type_id=type_id;
		this.typename=typename;
	}
	public int getType_id() {
		return type_id;
	}
	public void setType_id(int type_id) {
		this.type_id = type_id;
	}
	public String getTypename() {
		return typename;
	}
	public void setTypename(String typename) {
		this.typename = typename;
	}
	
}
