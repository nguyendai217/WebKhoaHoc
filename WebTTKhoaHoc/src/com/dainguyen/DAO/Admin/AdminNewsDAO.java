package com.dainguyen.DAO.Admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dainguyen.Model.News;

public class AdminNewsDAO {
public static List<News> LoadListNewsAdmin(Connection conn){
		
		List<News> list= new ArrayList<News>();
		
		String sql= "SELECT news_id, SUBSTRING(title, 1, 35) as title, date, SUBSTRING(content_news, 1, 35) as content_news , image, news.account_id, type_id from news join account on news.account_id = account.account_id"
				+ " ORDER BY date DESC";
		
		try {
			PreparedStatement ptmt= conn.prepareStatement(sql);
			
			ResultSet rs= ptmt.executeQuery();
			
			while(rs.next()){
				
				int news_id=rs.getInt("news_id");
				String title=rs.getString("title");
				String date=rs.getString("date");
				String content_news=rs.getString("content_news");
				String image=rs.getString("image");
				int account_id=rs.getInt("account_id");
				int type_id=rs.getInt("type_id");
				
				News news= new News();
				news.setNews_id(news_id);
				news.setTitle(title);
				news.setDate(date);
				news.setContent_news(content_news);
				news.setImage(image);
				news.setAccount_id(account_id);
				news.setType_id(type_id);			
				
				list.add(news);
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
			
		return list;
	}
}
