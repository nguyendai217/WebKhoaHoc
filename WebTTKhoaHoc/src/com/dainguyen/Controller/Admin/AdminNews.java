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
import com.dainguyen.DAO.Admin.AdminNewsDAO;
import com.dainguyen.DBConnection.DBConnection;
import com.dainguyen.Model.News;
import com.dainguyen.Model.Type_of_news;

@WebServlet("/AdminNews")
public class AdminNews extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminNews() {
		super();
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
		String usname = (String) session.getAttribute("username");

		if (usname == null) {
			response.sendRedirect("login");
		} else {
			Connection conn = DBConnection.CreateConnection();
			List<News> nw = AdminNewsDAO.LoadListNewsAdmin(conn);
			List<Type_of_news> typenw = Type_of_NewsDAO.LoadTypeNews(conn);
			request.setAttribute("listNews", nw);
			request.setAttribute("listTypeofNews", typenw);
			request.setAttribute("type", "0");

			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/admin/admin_news.jsp");
			rd.forward(request, response);
		}
	}

}
