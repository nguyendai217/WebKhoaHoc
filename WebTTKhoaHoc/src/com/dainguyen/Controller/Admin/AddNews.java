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

import com.dainguyen.DAO.Type_of_NewsDAO;
import com.dainguyen.DBConnection.DBConnection;
import com.dainguyen.Model.Type_of_news;

@WebServlet("/AddNews")
public class AddNews extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddNews() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
		if (username==null) {
			response.sendRedirect("login");
		}
		else {
			Connection conn= DBConnection.CreateConnection();
			List<Type_of_news> type_of_news= Type_of_NewsDAO.LoadTypeNews(conn);
			request.setAttribute("listTypeofNews", type_of_news);
			RequestDispatcher rd= request.getRequestDispatcher("/WEB-INF/views/admin/admin_addnews.jsp");
			rd.forward(request, response);
			
		}

	}

}
