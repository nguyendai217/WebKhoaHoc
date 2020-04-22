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

import com.dainguyen.DAO.NewsDAO;
import com.dainguyen.DAO.Type_of_NewsDAO;
import com.dainguyen.DBConnection.DBConnection;
import com.dainguyen.Model.News;
import com.dainguyen.Model.Type_of_news;

/**
 * Servlet implementation class NewsInfoController
 */
@WebServlet("/NewsInfo")
public class NewsInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public NewsInfoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn= DBConnection.CreateConnection();
		
		String new_id= request.getParameter("news_id");
		int newId= Integer.parseInt(new_id);
		News news_info=NewsDAO.LoadNewsByNewsID(conn, newId);
		
		request.setAttribute("news_info", news_info);
		List<News> news=NewsDAO.LoadTinTuc(conn);
		request.setAttribute("news", news);
		//load danh sách Loại tintuc
		List<Type_of_news> typenews=Type_of_NewsDAO.LoadTypeNews(conn);
		request.setAttribute("typenews", typenews);
		//
		RequestDispatcher rd= request.getRequestDispatcher("/WEB-INF/views/news_info.jsp");
		rd.forward(request, response);
				

	}

}
