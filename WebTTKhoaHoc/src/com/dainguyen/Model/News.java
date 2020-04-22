package com.dainguyen.Model;

public class News {
	private int news_id; 
	private String title; 
	private String date; 
	private String content_news; 
	private String image; 
	private int account_id; 
	private int type_id;
	private String name;
	
	
	public News(){
		
	}

	
	public News(int news_id, String title, String date, String content_news, String image, int account_id, int type_id,
			String name) {
		this.news_id = news_id;
		this.title = title;
		this.date = date;
		this.content_news = content_news;
		this.image = image;
		this.account_id = account_id;
		this.type_id = type_id;
		this.name = name;
	}



	public int getNews_id() {
		return news_id;
	}
	public void setNews_id(int news_id) {
		this.news_id = news_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getContent_news() {
		return content_news;
	}
	public void setContent_news(String content_news) {
		this.content_news = content_news;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getAccount_id() {
		return account_id;
	}
	public void setAccount_id(int account_id) {
		this.account_id = account_id;
	}
	public int getType_id() {
		return type_id;
	}
	public void setType_id(int type_id) {
		this.type_id = type_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

}
