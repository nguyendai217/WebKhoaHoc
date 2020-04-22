package com.dainguyen.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.dainguyen.Model.Account;

public class AccountDAO {

	public static Boolean InsertAccount(Account acc, Connection conn) {
		Boolean flag= false;
		String sql="insert into account(accountname,role_id,password,name,birthday,sex,mail,phonenumber) value(?,?,?,?,?,?,?,?) ";
		try {
			PreparedStatement pst= conn.prepareStatement(sql);
			pst.setString(1, acc.getAccountname());
			pst.setInt(2,3);
			pst.setString(3, acc.getPassword());
			pst.setString(4,acc.getName());
			pst.setString(5, acc.getBirthday());
			pst.setString(6, acc.getSex());
			pst.setString(7, acc.getMail());
			pst.setString(8, acc.getPhonenumber());
			
			pst.executeUpdate();
			flag= true;
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(" insert failed "+ e.getMessage());
			flag= false;
		}
		return flag;
	}
}
