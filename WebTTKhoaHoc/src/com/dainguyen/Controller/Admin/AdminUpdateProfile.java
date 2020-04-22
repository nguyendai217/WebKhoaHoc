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

import com.dainguyen.DAO.LoginDAO;
import com.dainguyen.DAO.Admin.AdminEditAccount;
import com.dainguyen.DBConnection.DBConnection;
import com.dainguyen.Model.User;

/**
 * Servlet implementation class AdminUpdateProfile
 */
@WebServlet("/AdminUpdateProfile")
public class AdminUpdateProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminUpdateProfile() {
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
		String username = (String) session.getAttribute("username");
		if (username == null) {
			response.sendRedirect("login");
		} else {
			request.setCharacterEncoding("UTF-8");
			Connection conn = DBConnection.CreateConnection();
			String message = "";

			User user = new User();

			user.setAccountname(username);
			user.setName(request.getParameter("name"));
			user.setSex(request.getParameter("listsex"));
			user.setBirthday(request.getParameter("birthday"));
			user.setMail(request.getParameter("mail"));
			user.setPhonenumber(request.getParameter("phonenumber"));

			System.out.println(request.getParameter("name"));
			System.out.println(request.getParameter("listsex"));
			System.out.println(request.getParameter("birthday"));
			System.out.println(request.getParameter("mail"));
			System.out.println(request.getParameter("phonenumber"));
			boolean flag = AdminEditAccount.UpdateAccount(user, conn);
			if (flag == true) {
				message = "Cập nhật thông tin thành công!";
			} else {
				message = "Cập nhật thất bại!";
			}
			User uss = new User();
			uss = LoginDAO.getUserInfo(username);
			request.setAttribute("adminInfo", uss);
			request.setAttribute("message", message);

			session.setAttribute("adminName", user.getName()); // set lại name vào session

			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/admin/admin_info.jsp");
			rd.forward(request, response);
		}
	}

}
