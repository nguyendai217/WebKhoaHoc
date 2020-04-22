package com.dainguyen.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.dainguyen.DBConnection.DBConnection;
import com.dainguyen.Model.Account;

public class TestLogin {
	public TestLogin() {
	}

	public static Account TestAccount(String Name, String Pass) throws SQLException {

		Connection conn = DBConnection.CreateConnection();
		Account user = new Account();
		String str = "SELECT * FROM account WHERE accountname=? and password=?";

		PreparedStatement pstm = conn.prepareStatement(str);
		pstm.setString(1, Name);
		pstm.setString(2, Pass);
		ResultSet rs = pstm.executeQuery();

		// Kiểm tra user và pass
		if (rs.next()) {

			Integer account_id = rs.getInt("account_id");
			String accountname = rs.getString("accountname");
			String avatar = rs.getString("avatar");
			Integer role_id = rs.getInt("role_id");
			String name = rs.getString("name");
			String birthday = rs.getString("birthday");
			String sex = rs.getString("sex");
			String mail = rs.getString("mail");
			String phonenumber = rs.getString("phonenumber");

			user.setAccount_id(account_id);
			user.setAccountname(accountname);
			user.setAvatar(avatar);
			user.setRole_id(role_id);
			user.setName(name);
			user.setBirthday(birthday);
			user.setSex(sex);
			user.setMail(mail);
			user.setPhonenumber(phonenumber);

			conn.close();
			return user;
		}
		return null;
	}

	public static Account findUser(String Name) throws SQLException {
		Connection conn = DBConnection.CreateConnection();
		Account user = new Account();
		String str = "SELECT * FROM account WHERE accountname=? ";

		PreparedStatement pstm = conn.prepareStatement(str);
		pstm.setString(1, Name);
		ResultSet rs = pstm.executeQuery();

		// Kiểm tra user và pass
		if (rs.next()) {

			Integer account_id = rs.getInt("account_id");
			String accountname = rs.getString("accountname");
			String avatar = rs.getString("avatar");
			Integer role_id = rs.getInt("role_id");
			String name = rs.getString("name");
			String birthday = rs.getString("birthday");
			String sex = rs.getString("sex");
			String mail = rs.getString("mail");
			String phonenumber = rs.getString("phonenumber");

			user.setAccount_id(account_id);
			user.setAccountname(accountname);
			user.setAvatar(avatar);
			user.setRole_id(role_id);
			user.setName(name);
			user.setBirthday(birthday);
			user.setSex(sex);
			user.setMail(mail);
			user.setPhonenumber(phonenumber);

			conn.close();
			return user;
		}
		return null;
	}
}
