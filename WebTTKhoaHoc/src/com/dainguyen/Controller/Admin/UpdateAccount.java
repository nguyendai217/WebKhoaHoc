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

import com.dainguyen.DAO.Admin.AdminAccountDAO;
import com.dainguyen.DAO.Admin.AdminEditAccount;
import com.dainguyen.DBConnection.DBConnection;
import com.dainguyen.Model.User;

/**
 * Servlet implementation class UpdateAccount
 */
@WebServlet("/UpdateAccount")
public class UpdateAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public UpdateAccount() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		// Lấy ra username đăng nhập vào
		String username = (String) session.getAttribute("username");
		if (username == null) {
			response.sendRedirect("login");
		} else {
			request.setCharacterEncoding("UTF-8");
			Connection conn = DBConnection.CreateConnection();
			String message="";

			User user = new User();

			user.setAccountname(request.getParameter("username"));
			user.setName(request.getParameter("name"));
			user.setSex(request.getParameter("listsex"));
			user.setBirthday(request.getParameter("birthday"));
			user.setMail(request.getParameter("mail"));
			user.setPhonenumber(request.getParameter("phonenumber"));

			boolean flag = AdminEditAccount.UpdateAccount(user, conn);
			if (flag == true) {
				message = "Cập nhật thông tin thành công!";
			} else {
				message = "Cập nhật thất bại!";
			}
			
			List<User> us = AdminAccountDAO.LoadAllUsers(username, conn);
			request.setAttribute("listAccount", us);
			request.setAttribute("role", "4");
			request.setAttribute("message", message);

			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/admin/admin_account.jsp");
			rd.forward(request, response);
		}
	}

}
