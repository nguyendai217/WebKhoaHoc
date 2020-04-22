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

import com.dainguyen.DAO.LoginDAO;
import com.dainguyen.DAO.Admin.AdminEditAccount;
import com.dainguyen.DBConnection.DBConnection;
import com.dainguyen.Model.User;

@WebServlet("/AdminUpdatePassword")
public class AdminUpdatePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminUpdatePassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		// Lấy ra username đăng nhập vào
		String username = (String) session.getAttribute("username");
		if(username == null) {
			response.sendRedirect("login");
		}
		else {
			Connection conn = DBConnection.CreateConnection();
			User user = new User();
			user.setAccountname(username);
			user.setPassword(request.getParameter("newpass"));
			boolean flag = AdminEditAccount.UpdatePassword(user, conn);
			if (flag == true) {
				User us = new User();
		        us = LoginDAO.getUserInfo(username);
				request.setAttribute("adminInfo", us);
				RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/admin/admin_info.jsp");
				rd.forward(request, response);
			}
		}
	}

}
