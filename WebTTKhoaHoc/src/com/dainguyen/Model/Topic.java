package com.dainguyen.Model;

public class Topic {
	private int topic_id; 
	private String topicname;
	public Topic(){
		
	}
	public Topic(int topic_id, String topicname){
		this.topic_id=topic_id;
		this.topicname=topicname;
	}
	public int getTopic_id() {
		return topic_id;
	}
	public void setTopic_id(int topic_id) {
		this.topic_id = topic_id;
	}
	public String getTopicname() {
		return topicname;
	}
	public void setTopicname(String topicname) {
		this.topicname = topicname;
	}
	
}
