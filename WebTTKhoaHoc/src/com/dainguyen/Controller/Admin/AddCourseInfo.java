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
import com.dainguyen.DAO.Admin.AdminEditCourse;
import com.dainguyen.DBConnection.DBConnection;
import com.dainguyen.Model.Course;

/**
 * Servlet implementation class AdminAddCourseInfo
 */
@WebServlet("/AddCourseInfo")
public class AddCourseInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddCourseInfo() {
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
		HttpSession session = request.getSession();
		// Lấy ra username đăng nhập vào
		String usname = (String) session.getAttribute("username");

		if (usname == null) {
			response.sendRedirect("login");
		} else {
			request.setCharacterEncoding("UTF-8");
			Connection conn = DBConnection.CreateConnection();
			String message = "";

			Course course = new Course();
			course.setCoursename(request.getParameter("coursename"));
			course.setTopic_id(Integer.parseInt(request.getParameter("ListTopic")));
			course.setFee(Double.parseDouble(request.getParameter("fee")));
			course.setDescription(request.getParameter("description"));
			course.setInfo(request.getParameter("info"));

			boolean flag = AdminEditCourse.InsertCourse(course, conn);
			if (flag == true) {
				message = "Thêm khóa học thành công!";
			} else {
				message = "Thêm thất bại!";
			}
			// load lại trang admin_course
			List<Course> listCourse = AdminCourseDAO.LoadListCourses(conn);

			request.setAttribute("listCourse", listCourse);
			request.setAttribute("topic", "0");
			request.setAttribute("message", message);

			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/admin/admin_course.jsp");
			rd.forward(request, response);
		}
	}

}
