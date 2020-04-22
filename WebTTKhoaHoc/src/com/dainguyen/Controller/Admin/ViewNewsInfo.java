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

import com.dainguyen.DAO.NewsDAO;
import com.dainguyen.DAO.Type_of_NewsDAO;
import com.dainguyen.DBConnection.DBConnection;
import com.dainguyen.Model.News;
import com.dainguyen.Model.Type_of_news;

@WebServlet("/ViewNewsInfo")
public class ViewNewsInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ViewNewsInfo() {
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

			int newsID = Integer.parseInt(request.getParameter("newsID"));
			List<Type_of_news> typenw = Type_of_NewsDAO.LoadTypeNews(conn);

			News news = new News();
			news = NewsDAO.LoadNewsByNewsID(conn, newsID);
			request.setAttribute("newsInfo", news);
			request.setAttribute("listTypeofNews", typenw);

			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/admin/admin_viewNewsInfo.jsp");
			rd.forward(request, response);
		}
		
	}

}
