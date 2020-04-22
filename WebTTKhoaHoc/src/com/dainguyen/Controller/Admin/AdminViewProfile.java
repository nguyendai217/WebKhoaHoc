package com.dainguyen.Controller.Admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dainguyen.DAO.LoginDAO;
import com.dainguyen.Model.User;

@WebServlet("/AdminViewProfile")
public class AdminViewProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminViewProfile() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String usname = (String) request.getSession().getAttribute("username");
		if (usname == null) {
			response.sendRedirect("login");
		}

		else {
			User user = new User();
			user = LoginDAO.getUserInfo(usname);
			request.setAttribute("adminInfo", user);
			request.setAttribute("message", "");
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/admin/admin_info.jsp");
			rd.forward(request, response);
		}
	}

}
