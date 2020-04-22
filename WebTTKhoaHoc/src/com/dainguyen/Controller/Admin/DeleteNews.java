package com.dainguyen.Controller.Admin;

import java.io.IOException;
import java.sql.Connection;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dainguyen.DAO.Type_of_NewsDAO;
import com.dainguyen.DAO.Admin.AdminEditNews;
import com.dainguyen.DAO.Admin.AdminNewsDAO;
import com.dainguyen.DBConnection.DBConnection;
import com.dainguyen.Model.News;
import com.dainguyen.Model.Type_of_news;

/**
 * Servlet implementation class AdminDeleteNews
 */
@WebServlet("/DeleteNews")
public class DeleteNews extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteNews() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		// Lấy ra username đăng nhập vào
		String username = (String) session.getAttribute("username");
		if(username == null) {
			response.sendRedirect("login");
		}
		else {
			Connection conn = DBConnection.CreateConnection();
			String message="";
			
			String[] newsDel = request.getParameterValues("newsDel[]");
			
			List<String> listDel =  Arrays.asList(newsDel);
			
			boolean flag = AdminEditNews.DeleteNews(listDel, conn);
			if(flag==true) {
				message="Xóa thành công";
			}
			else {
				message="Lỗi!";
			}
			
			//load lại trang admin news
			List<News> nw = AdminNewsDAO.LoadListNewsAdmin(conn);
			List<Type_of_news> typenw = Type_of_NewsDAO.LoadTypeNews(conn);
			request.setAttribute("listNews", nw);
			request.setAttribute("listTypeofNews", typenw);
			request.setAttribute("type", "0");
			request.setAttribute("message", message);
			
			RequestDispatcher rd= request.getRequestDispatcher("/WEB-INF/views/admin/admin_news.jsp");
			rd.forward(request, response);
		}
	}

}
