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

import com.dainguyen.DAO.Admin.AdminCourseDAO;
import com.dainguyen.DBConnection.DBConnection;
import com.dainguyen.Model.Course;

@WebServlet("/SearchCourse")
public class SearchCourse extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SearchCourse() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		// Lấy ra username đăng nhập vào
		String usname = (String) session.getAttribute("username");

		if (usname == null) {
			response.sendRedirect("login");
		} else {
			request.setCharacterEncoding("UTF-8");
			Connection conn = DBConnection.CreateConnection();
			String search = request.getParameter("search");

			List<Course> listCourse = AdminCourseDAO.SearchCourse(search.trim(), conn);

			request.setAttribute("listCourse", listCourse);
			request.setAttribute("topic", "0");

			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/admin/admin_course.jsp");
			rd.forward(request, response);
		}
	}

}
