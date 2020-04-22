package com.dainguyen.Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dainguyen.DAO.CourseDAO;
import com.dainguyen.DAO.NewsDAO;
import com.dainguyen.DAO.TestLogin;
import com.dainguyen.DBConnection.DBConnection;
import com.dainguyen.Model.Account;
import com.dainguyen.Model.Course;
import com.dainguyen.Model.News;

@WebServlet("/TrangChu")
public class TrangChuController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TrangChuController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = DBConnection.CreateConnection();
		//load COURSE
		List<Course> course= CourseDAO.LoadKhoaHoc(conn);
		request.setAttribute("courses", course);
		
		//System.out.println("" +course.get(0).getCoursename());
		//Load News
		List<News> news=NewsDAO.LoadTinTuc(conn);
		request.setAttribute("news", news);
		
		//System.out.println(""+ news.get(0));
		//Xá»­ lÃ½ Session & Cookie
		HttpSession session = request.getSession();
		//Get an array of Cookies associated with this domain
		Cookie[] cookie= request.getCookies();
		
		Account acc=null;
		
		if(session.getAttribute("account")==null && cookie!=null)
		{
			try {
				acc= TestLogin.findUser(cookie[0].getValue());
				session.setAttribute("account",acc);
				
			} catch (SQLException e) {
				e.printStackTrace();
				System.out.print("errro failed "+e.getMessage());
			}
		}
		
		RequestDispatcher rd= request.getRequestDispatcher("/WEB-INF/views/trangchu.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
