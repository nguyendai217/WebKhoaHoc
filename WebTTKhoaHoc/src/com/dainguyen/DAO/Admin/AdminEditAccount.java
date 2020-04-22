package com.dainguyen.DAO.Admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import com.dainguyen.Model.User;

public class AdminEditAccount {

	// edit account
	// update account

	public static boolean InsertAccount(User r, Connection conn) {
		String sql = "INSERT INTO account (accountname, password, name, birthday, sex, mail, phonenumber, role_id)"
				+ " VALUES (?, ?, ?, ?, ?, ?, ?, ?); ";

		try {

			PreparedStatement ptmt = conn.prepareStatement(sql);

			ptmt.setString(1, r.getAccountname());
			ptmt.setString(2, r.getPassword());
			ptmt.setString(3, r.getName());
			ptmt.setString(4, r.getBirthday());
			ptmt.setString(5, r.getSex());
			ptmt.setString(6, r.getMail());
			ptmt.setString(7, r.getPhonenumber());
			ptmt.setInt(8, r.getRole_id());

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

	public static boolean UpdateAccount(User user, Connection conn) {
		String sql = "update account set  name=?, birthday=?, sex=?, " + "mail=?, phonenumber=?  where accountname='"
				+ user.getAccountname() + "';";

		try {

			PreparedStatement ptmt = conn.prepareStatement(sql);

			ptmt.setString(1, user.getName());
			ptmt.setString(2, user.getBirthday());
			ptmt.setString(3, user.getSex());
			ptmt.setString(4, user.getMail());
			ptmt.setString(5, user.getPhonenumber());

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

	public static boolean UpdatePassword(User user, Connection conn) {
		String sql = "update account set  password=? where accountname='" + user.getAccountname() + "';";

		try {

			PreparedStatement ptmt = conn.prepareStatement(sql);

			ptmt.setString(1, user.getPassword());

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

	public static boolean DeleteAccount(List<String> listDel, Connection conn) {

		boolean t = false;
		try {

			for (String acceptThem : listDel) {
				String sql = "Delete from account WHERE account_id = '" + acceptThem + "'";
				PreparedStatement pst = conn.prepareStatement(sql);
				pst.executeUpdate();
			}
			t = true;
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		return t;
	}

	public static boolean ResetPassword(List<String> listDel, Connection conn) {

		boolean t = false;
		try {

			for (String acceptThem : listDel) {
				String sql = "Update account set password='000'" + " WHERE account_id = '" + acceptThem + "'";
				PreparedStatement stmt = conn.prepareStatement(sql);
				stmt.executeUpdate();
			}
			t = true;
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		return t;
	}

}
