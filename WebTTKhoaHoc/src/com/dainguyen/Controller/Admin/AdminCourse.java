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

/**
 * Servlet implementation class AdminCourse
 */
@WebServlet("/AdminCourse")
public class AdminCourse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AdminCourse() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Khởi tạo đối tượng Session
		HttpSession session = request.getSession(false);
		// Lấy ra username đăng nhập vào
		String username = (String) session.getAttribute("username");
		if(username == null) {
			response.sendRedirect("login");
		}
		else {
			Connection conn = DBConnection.CreateConnection();
			List<Course> listCourse = AdminCourseDAO.LoadListCourses(conn);
			
			request.setAttribute("listCourse", listCourse);
			request.setAttribute("topic", "0");
			
			RequestDispatcher rd= request.getRequestDispatcher("/WEB-INF/views/admin/admin_course.jsp");
			rd.forward(request, response);
		}
	}
	

}
