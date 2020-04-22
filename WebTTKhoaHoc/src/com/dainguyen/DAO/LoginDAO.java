package com.dainguyen.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.dainguyen.DBConnection.DBConnection;
import com.dainguyen.Model.User;

public class LoginDAO {
	// Lấy thông tin user
	public static User getUserInfo(String username) {
		Connection con = DBConnection.CreateConnection();
		String sql = "select * from account where accountname='" + username + "'";
		User user = new User();
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				int account_id = rs.getInt("account_id");
				String usname = rs.getString("accountname");
				String password = rs.getString("password").trim();
				String name = rs.getString("name");
				String birthday = rs.getString("birthday");
				String sex = rs.getString("sex");
				String email = rs.getString("mail");
				String phonenumber = rs.getString("phonenumber");
				String avatar = rs.getString("avatar");
				user = new User(account_id, usname, password, name, birthday, sex, email, phonenumber, avatar);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("" + e.getMessage());
		}
		return user;
	}
}
