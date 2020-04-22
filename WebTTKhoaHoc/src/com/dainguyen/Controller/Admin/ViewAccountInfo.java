package com.dainguyen.Controller.Admin;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dainguyen.DAO.Admin.AdminAccountDAO;
import com.dainguyen.DBConnection.DBConnection;
import com.dainguyen.Model.User;

@WebServlet("/ViewAccountInfo")
public class ViewAccountInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ViewAccountInfo() {
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
			Connection conn = DBConnection.CreateConnection();
			String account_id = request.getParameter("account_id");
			User us = new User();

			us = AdminAccountDAO.LoadAccountInfo(account_id, conn);

			request.setAttribute("usInfo", us);
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/admin/admin_account_info.jsp");
			rd.forward(request, response);
		}
	}

}
