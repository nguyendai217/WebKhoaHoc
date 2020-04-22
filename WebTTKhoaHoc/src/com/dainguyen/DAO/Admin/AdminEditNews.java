package com.dainguyen.DAO.Admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import com.dainguyen.Model.News;

public class AdminEditNews {
	public static boolean InsertNews(News news, Connection conn) {
		String sql = "INSERT INTO news (title, date, content_news, account_id, type_id) VALUES (?, CURDATE(), ?, ?, ?);";

		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);

			ptmt.setString(1, news.getTitle());
			ptmt.setString(2, news.getContent_news());
			ptmt.setInt(3, news.getAccount_id());
			ptmt.setInt(4, news.getType_id());

			int kt = ptmt.executeUpdate();

			if (kt != 0) {

				return true;
			}
			ptmt.close();

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Error :" + e.getMessage());
		}

		return false;
	}

	public static boolean UpdateNews(News news, Connection conn) {
		String sql = "update news set  title=?, date=?, content_news=?, account_id=?, type_id=? where news_id='"+ news.getNews_id() + "'";

		try {

			PreparedStatement ptmt = conn.prepareStatement(sql);

			ptmt.setString(1, news.getTitle());
			ptmt.setString(2, news.getDate());
			ptmt.setString(3, news.getContent_news());
			ptmt.setDouble(4, news.getAccount_id());
			ptmt.setInt(5, news.getType_id());

			int kt = ptmt.executeUpdate();

			if (kt != 0) {

				return true;
			}
			ptmt.close();

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Error :" + e.getMessage());
		}

		return false;
	}

	public static boolean DeleteNews(List<String> listDel, Connection conn) {

		boolean t = false;
		try {

			for (String acceptThem : listDel) {
				String sql = "Delete from news WHERE news_id = '" + acceptThem + "'";
				PreparedStatement stmt = conn.prepareStatement(sql);
				stmt.executeUpdate();
			}
			t = true;
		}

		catch (Exception e) {
			e.printStackTrace();
			System.out.println("Error :" + e.getMessage());
		}
		return t;
	}
}
