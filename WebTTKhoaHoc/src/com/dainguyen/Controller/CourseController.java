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

import com.dainguyen.DAO.CourseDAO;
import com.dainguyen.DAO.TopicDAO;
import com.dainguyen.DBConnection.DBConnection;
import com.dainguyen.Model.Course;
import com.dainguyen.Model.Topic;

@WebServlet("/Course")
public class CourseController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CourseController() {
		super();
		// TODO Auto-generated constructor stub
	}

	@SuppressWarnings("unused")
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Connection conn = DBConnection.CreateConnection();
		List<Course> course = null;

		String topic_id = request.getParameter("topic_id");

		if (topic_id == null) {
			request.setAttribute("id", 0);
			course = CourseDAO.LoadKhoaHoc(conn);
			
		} else {
			request.setAttribute("id", topic_id);
			course = CourseDAO.getCoursebyTopicID(conn, Integer.parseInt(topic_id));
		}

		request.setAttribute("course", course);

		
		// load Topic
		List<Topic> topic = TopicDAO.LoadTopicCourse(conn);
		request.setAttribute("topic", topic);
		//
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/course.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
