package com.dainguyen.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dainguyen.Model.Type_of_news;

public class Type_of_NewsDAO {

	public static List<Type_of_news> LoadTypeNews(Connection conn) {

		List<Type_of_news> list = new ArrayList<Type_of_news>();
		String sql = "SELECT * from type_of_news";
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				Type_of_news topic = new Type_of_news();
				topic.setType_id(rs.getInt("type_id"));
				topic.setTypename(rs.getString("typename"));

				list.add(topic);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}
}
