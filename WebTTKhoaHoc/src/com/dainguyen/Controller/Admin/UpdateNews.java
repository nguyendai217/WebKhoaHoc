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
import com.dainguyen.DAO.Admin.AdminEditNews;
import com.dainguyen.DAO.Admin.AdminNewsDAO;
import com.dainguyen.DBConnection.DBConnection;
import com.dainguyen.Model.News;
import com.dainguyen.Model.Type_of_news;

/**
 * Servlet implementation class UpdateNews
 */
@WebServlet("/UpdateNews")
public class UpdateNews extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateNews() {
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
		String usname = (String) session.getAttribute("username");

		if (usname == null) {
			response.sendRedirect("login");
		} else {
			request.setCharacterEncoding("UTF-8");
			Connection conn = DBConnection.CreateConnection();
			// khởi tạo thông báo
			String message = "";

			News news = new News();

			int news_id = Integer.parseInt(request.getParameter("news_id"));
			news.setNews_id(news_id);
			news.setTitle(request.getParameter("title"));
			news.setContent_news(request.getParameter("content_news"));
			news.setDate(request.getParameter("date"));
			news.setAccount_id(Integer.parseInt(request.getParameter("account_id")));
			news.setType_id(Integer.parseInt(request.getParameter("ListType")));

			boolean flag = AdminEditNews.UpdateNews(news, conn);
			if (flag == true) {
				message = "Cập nhật thành công!";
			} else {
				message = "Cập nhật thất bại!";
			}
			// load lại trang admin_news
			List<News> nw = AdminNewsDAO.LoadListNewsAdmin(conn);
			List<Type_of_news> typenw = Type_of_NewsDAO.LoadTypeNews(conn);
			request.setAttribute("listNews", nw);
			request.setAttribute("listTypeofNews", typenw);
			request.setAttribute("type", "0");
			request.setAttribute("message", message);

			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/admin/admin_news.jsp");
			rd.forward(request, response);
		}
	}

}
