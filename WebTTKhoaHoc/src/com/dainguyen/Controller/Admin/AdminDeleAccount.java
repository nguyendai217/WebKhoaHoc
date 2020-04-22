package com.dainguyen.Controller.Admin;

import java.io.IOException;
import java.sql.Connection;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dainguyen.DAO.Admin.AdminAccountDAO;
import com.dainguyen.DAO.Admin.AdminEditAccount;
import com.dainguyen.DBConnection.DBConnection;
import com.dainguyen.Model.User;

/**
 * Servlet implementation class AdminDeleAccount
 */
@WebServlet("/AdminDeleAccount")
public class AdminDeleAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminDeleAccount() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Khởi tạo đối tượng Session
		HttpSession session = request.getSession(false);
		// Lấy ra username đăng nhập vào
		String username = (String) session.getAttribute("username");
		if (username == null) {
			response.sendRedirect("login");
		} else {
			Connection conn = DBConnection.CreateConnection();
			String message = "";

			String[] accountDel = request.getParameterValues("accountDel[]");
			String action = request.getParameter("action");

			List<String> listDel = Arrays.asList(accountDel);

			if ("delete".equals(action)) { // delete list tài khoản
				boolean flag = AdminEditAccount.DeleteAccount(listDel, conn);
				if (flag == true) {
					message = "Xóa thành công";
				} else {
					message = "Lỗi!";
				}
			} else if ("reset".equals(action)) { // reset password list tài khoản
				boolean flag = AdminEditAccount.ResetPassword(listDel, conn);
				if (flag == true) {
					message = "Reset password thành công";
				} else {
					message = "Lỗi!";
				}
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
