package com.dainguyen.DAO.Admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import com.dainguyen.Model.Course;

public class AdminEditCourse {

	public static boolean InsertCourse(Course course, Connection conn) {
		String sql = "INSERT INTO course (coursename, description, info, fee, topic_id) VALUES (?, ?, ?, ?, ?) ";

		try {

			PreparedStatement ptmt = conn.prepareStatement(sql);

			ptmt.setString(1, course.getCoursename());
			ptmt.setString(2, course.getDescription());
			ptmt.setString(3, course.getInfo());
			ptmt.setDouble(4, course.getFee());
			ptmt.setInt(5, course.getTopic_id());

			int kt = ptmt.executeUpdate();

			if (kt != 0) {
				return true;
			}
			ptmt.close();

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Error :" + e.getMessage());
		}

		return false;
	}

	
	public static boolean DeleteCourse(List<String> listDel, Connection conn) {

		boolean t = false;
		try {
			for (String acceptThem : listDel) {
				String sql = "Delete from course WHERE course_id = '" + acceptThem + "'";
				PreparedStatement stmt = conn.prepareStatement(sql);
				stmt.executeUpdate();
			}
			t = true;
		}
		catch (Exception e) {
			e.printStackTrace();
			System.out.println("Error :" + e.getMessage());
		}
		return t;
	}
	
	
	public static boolean UpdateCourse(Course course, Connection conn) {
		String sql = "update course set  coursename=?, description=?, info=?, fee=?, topic_id=? where course_id='"+course.getCourse_id()+"';";
		
			try {
			
			PreparedStatement ptmt = conn.prepareStatement(sql);
			
			ptmt.setString(1, course.getCoursename());
			ptmt.setString(2, course.getDescription());
			ptmt.setString(3, course.getInfo());
			ptmt.setDouble(4, course.getFee());
			ptmt.setInt(5, course.getTopic_id());
			
			int kt = ptmt.executeUpdate();

			if(kt!=0){
				
				return true;
			}
			ptmt.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Error :"+e.getMessage());
		}

		return false;
	}

}
