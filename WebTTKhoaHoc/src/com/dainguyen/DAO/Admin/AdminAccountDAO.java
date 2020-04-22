package com.dainguyen.DAO.Admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dainguyen.Model.User;

public class AdminAccountDAO {
	public static List<User> LoadAllUsers(String username,Connection conn) {
		List<User> list = new ArrayList<User>();

		String sql = "SELECT account_id, accountname, password, name, birthday, sex, mail, phonenumber, avatar, rolename"
				+ " FROM account join role on account.role_id = role.role_id";
//				+ " where accountname = '"+username+"';";

		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				int account_id = rs.getInt("account_id");
				String accountname = rs.getString("accountname");
				String password = rs.getString("password");
				String name = rs.getString("name");
				String birthday = rs.getString("birthday");
				String sex = rs.getString("sex");
				String mail = rs.getString("mail");
				String phonenumber = rs.getString("phonenumber");
				String avatar = rs.getString("avatar");
				String rolename = rs.getString("rolename");

				User user = new User();

				user.setAccount_id(account_id);
				user.setAccountname(accountname);
				user.setPassword(password);
				user.setName(name);
				user.setBirthday(birthday);
				user.setSex(sex);
				user.setMail(mail);
				user.setPhonenumber(phonenumber);
				user.setAvatar(avatar);
				user.setRolename(rolename);

				list.add(user);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	
	// show info on admin
	public static User LoadAccountInfo(String accountID, Connection conn) {
		User user = new User();
		String sql = null;
		sql = "SELECT * FROM account" + " WHERE account_id = '" + accountID + "'";
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				int account_id = rs.getInt("account_id");
				String accountname = rs.getString("accountname");
				String name = rs.getString("name");
				String birthday = rs.getString("birthday");
				String sex = rs.getString("sex");
				String mail = rs.getString("mail");
				String phonenumber = rs.getString("phonenumber");
				String avatar = rs.getString("avatar");
				int role_id = rs.getInt("role_id");
				//String rolename= rs.getString("rolename");

				user.setAccount_id(account_id);
				user.setAccountname(accountname);
				user.setName(name);
				user.setBirthday(birthday);
				user.setSex(sex);
				user.setMail(mail);
				user.setPhonenumber(phonenumber);
				user.setAvatar(avatar);
				user.setRole_id(role_id);
				//user.setRolename(rolename);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return user;
	}

}
