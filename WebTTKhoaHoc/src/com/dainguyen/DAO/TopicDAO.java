package com.dainguyen.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dainguyen.Model.Topic;

public class TopicDAO {
public static List<Topic> LoadTopicCourse(Connection conn){
		
		List<Topic> list= new ArrayList<Topic>();
		
		String sql= "SELECT * from topic";
		
		try {
			PreparedStatement ptmt= conn.prepareStatement(sql);
			
			ResultSet rs= ptmt.executeQuery();
			
			while(rs.next()){
				
				int topic_id=rs.getInt("topic_id");
				String topicname=rs.getString("topicname");
				
				
				Topic topic= new Topic();
				topic.setTopic_id(topic_id);
				topic.setTopicname(topicname);
				
				list.add(topic);
				
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
			
		return list;
	}

}
