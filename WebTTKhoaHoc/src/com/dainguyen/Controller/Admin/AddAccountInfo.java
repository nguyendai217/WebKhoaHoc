package com.dainguyen.Controller.Admin;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dainguyen.Controller.MD5;
import com.dainguyen.DAO.Admin.AdminAccountDAO;
import com.dainguyen.DAO.Admin.AdminEditAccount;
import com.dainguyen.DBConnection.DBConnection;
import com.dainguyen.Model.User;

/**
 * Servlet implementation class AdminAddAccountInfo
 */
@WebServlet("/AddAccountInfo")
public class AddAccountInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddAccountInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Khởi tạo đối tượng Session
		HttpSession session = request.getSession(false);
		// Lấy ra username đăng nhập vào
		String username = (String) session.getAttribute("username");
		if (username == null) {
			response.sendRedirect("login");
		} else {
			request.setCharacterEncoding("UTF-8");
			Connection conn = DBConnection.CreateConnection();
			String message = "";

			User user = new User();
			user.setAccountname(request.getParameter("username"));
			user.setRole_id(Integer.parseInt(request.getParameter("roleID")));
			user.setName(request.getParameter("name"));
			user.setBirthday(request.getParameter("birthday"));
			user.setSex(request.getParameter("sex"));
			user.setMail(request.getParameter("email"));
			user.setPhonenumber(request.getParameter("phonenumber"));
			user.setPassword(MD5.encryption(request.getParameter("password")));

			boolean flag = AdminEditAccount.InsertAccount(user, conn);
			if (flag == true) {
				message = "Thêm tài khoản thành công!";
			} else {
				message = "Thêm thất bại!";
			}
			// load lại trang account admin
			List<User> us = AdminAccountDAO.LoadAllUsers(username, conn);
			request.setAttribute("listAccount", us);
			request.setAttribute("role", "4");
			request.setAttribute("message", message);

			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/admin/admin_account.jsp");
			rd.forward(request, response);
		}
	}

}
