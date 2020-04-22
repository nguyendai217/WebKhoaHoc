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

import com.dainguyen.DAO.Admin.AdminCourseDAO;
import com.dainguyen.DBConnection.DBConnection;
import com.dainguyen.Model.Course;

@WebServlet("/ViewCourseInfo")
public class ViewCourseInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ViewCourseInfo() {
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
			Connection conn = DBConnection.CreateConnection();

			String courseID = request.getParameter("courseID");
			Course c = new Course();
			c = AdminCourseDAO.LoadCourseInfo(courseID, conn);
			request.setAttribute("courseInfo", c);
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/admin/admin_course_info.jsp");
			rd.forward(request, response);
		}
		
	}

}
