package com.dainguyen.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dainguyen.Model.News;

public class NewsDAO {

	public static List<News> LoadTinTuc(Connection conn) {
		List<News> list = new ArrayList<News>();
		String sql = "SELECT news_id, title, date, content_news, image, news.account_id, type_id, name from news join account on news.account_id = account.account_id"
				+ " ORDER BY date DESC";

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				int news_id = rs.getInt("news_id");
				String title = rs.getString("title");
				String date = rs.getString("date");
				String content_news = rs.getString("content_news");
				String image = rs.getString("image");
				int account_id = rs.getInt("account_id");
				int type_id = rs.getInt("type_id");
				String name = rs.getString("name");

				News news = new News();
				news.setNews_id(news_id);
				news.setTitle(title);
				news.setDate(date);
				news.setContent_news(content_news);
				news.setImage(image);
				news.setAccount_id(account_id);
				news.setType_id(type_id);
				news.setName(name);

				list.add(news);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Failed " + e.getMessage());
		}
		return list;
	}

	public static List<News> LoadNewsbyTypeID(Connection conn, int typeid) {

		List<News> list = new ArrayList<News>();

		String sql = "SELECT news_id, title, date, content_news, image, news.account_id, type_id,name from news join account on news.account_id = account.account_id"
				+ " WHERE type_id=? ORDER BY date DESC";
		try {

			PreparedStatement ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, typeid);
			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {

				int news_id = rs.getInt("news_id");
				String title = rs.getString("title");
				String date = rs.getString("date");
				String content_news = rs.getString("content_news");
				String image = rs.getString("image");
				int account_id = rs.getInt("account_id");
				int type_id = rs.getInt("type_id");
				String name = rs.getString("name");

				News news = new News();
				news.setNews_id(news_id);
				news.setTitle(title);
				news.setDate(date);
				news.setContent_news(content_news);
				news.setImage(image);
				news.setAccount_id(account_id);
				news.setType_id(type_id);
				news.setName(name);

				list.add(news);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	public static News LoadNewsByNewsID(Connection conn, int new_id) {
		News news = new News();
		String sql = "SELECT news_id, title, date, content_news, image, news.account_id, type_id, name from news join account on news.account_id = account.account_id"
				+ " WHERE news_id= ?";
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, new_id);

			ResultSet rs = ptmt.executeQuery();

			if (rs.next()) {
				int news_id = rs.getInt("news_id");
				String title = rs.getString("title");
				String date = rs.getString("date");
				String content_news = rs.getString("content_news");
				String image = rs.getString("image");
				int account_id = rs.getInt("account_id");
				int type_id = rs.getInt("type_id");
				String name = rs.getString("name");

				news.setNews_id(news_id);
				news.setTitle(title);
				news.setDate(date);
				news.setContent_news(content_news);
				news.setImage(image);
				news.setAccount_id(account_id);
				news.setType_id(type_id);
				news.setName(name);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return news;

	}

}
