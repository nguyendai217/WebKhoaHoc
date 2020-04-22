package com.dainguyen.Controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dainguyen.DAO.AccountDAO;
import com.dainguyen.DBConnection.DBConnection;
import com.dainguyen.Model.Account;

@WebServlet("/register")
public class RegisterAccountController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegisterAccountController() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/register.jsp");
		rd.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
 
		Connection conn= DBConnection.CreateConnection();
		
		String accountname = request.getParameter("username1");
		String password= request.getParameter("password0");
		String name= request.getParameter("name");
		String birthday= request.getParameter("birthday");
		String sex = request.getParameter("sex");
		String mail= request.getParameter("mail");
		String phonenumber= request.getParameter("phonenumber");
		
		Account account= new Account();
		account.setAccountname(accountname);
		account.setPassword(password);
		account.setName(name);
		account.setBirthday(birthday);
		account.setSex(sex);
		account.setMail(mail);
		account.setPhonenumber(phonenumber);
		
		if (AccountDAO.InsertAccount(account, conn)) {
			
			request.setAttribute("errorStr", "Đăng kí thành công, vui lòng đăng nhập lại !");
			RequestDispatcher rd= this.getServletContext().getRequestDispatcher("/WEB-INF/views/login.jsp");
			rd.forward(request, response);
		}
		else {
			response.sendRedirect(request.getContextPath()+"/TrangChu");
		}
		
	}

}
