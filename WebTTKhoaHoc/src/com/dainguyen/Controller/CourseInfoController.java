package com.dainguyen.Controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dainguyen.DAO.ClassDAO;
import com.dainguyen.DAO.CourseDAO;
import com.dainguyen.DBConnection.DBConnection;
import com.dainguyen.Model.Course;

@WebServlet("/CourseInfo")
public class CourseInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CourseInfoController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection conn = DBConnection.CreateConnection();

		String course_id = (String) request.getParameter("course_id");
		int courseID = Integer.parseInt(course_id);

		Course course = CourseDAO.getCoursebyCourseID(conn, courseID);
		request.setAttribute("course", course);

		List<com.dainguyen.Model.Class> class1 = ClassDAO.getClassbyCourseID(conn, courseID);
		request.setAttribute("class_list", class1);

		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/course_info.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
