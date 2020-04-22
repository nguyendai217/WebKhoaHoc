package com.dainguyen.Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dainguyen.DAO.LoginDAO;
import com.dainguyen.DAO.TestLogin;
import com.dainguyen.Model.Account;
import com.dainguyen.Model.User;

@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginController() {

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/views/login.jsp");
		rd.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String username= req.getParameter("userName");
		String password=req.getParameter("password");
		String rememberStr = req.getParameter("remember");
		
		 //Kiểm tra người dùng có check remember không
        boolean remember = "Y".equals(rememberStr);
        
        Account user = null;
        boolean hasError = false;
        String errorStr = null;
        
        try {
			user=TestLogin.TestAccount(username,password);
			if(user==null)
			{
				hasError=true;
				errorStr="Tên đăng nhập hoặc mật khẩu không chính xác!!!";
			}
		} catch (SQLException e) {
			e.printStackTrace();
			hasError=true;
			errorStr=e.getMessage();
		}
        
        
        if(hasError){//trường hợp có lỗi
			req.setAttribute("errorStr", errorStr);
			req.setAttribute("account", user);
            RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/login.jsp");
            dispatcher.forward(req, resp);
        }
        else
        {
        	
            if (remember) {
                Cookie cookie=new Cookie("nameCookie",user.getAccountname());
                cookie.setMaxAge(3*24*60*60);
                resp.addCookie(cookie);
            }
            else {
                Cookie cookie=new Cookie("nameCookie",null);
                cookie.setMaxAge(0);
                resp.addCookie(cookie);
            }
			if(user.getRole_id()==2||user.getRole_id()==3)//user
			{
				HttpSession session = req.getSession();
				session.setAttribute("account",user);
	            resp.sendRedirect(req.getContextPath() + "/TrangChu");
			}
			else if(user.getRole_id()==1)
			{
				HttpSession session = req.getSession();
				session.setAttribute("username", username);
				
				User us = new User();
				us= LoginDAO.getUserInfo(username);
				session.setAttribute("adminName", us.getName());
				session.setAttribute("adminAvatar", us.getAvatar());
				session.setAttribute("adminID", us.getAccount_id());
				req.setAttribute("adminInfo", us);
			
				RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/views/admin/admin_info.jsp");
				rd.forward(req, resp);
			}
        }
	}

}
