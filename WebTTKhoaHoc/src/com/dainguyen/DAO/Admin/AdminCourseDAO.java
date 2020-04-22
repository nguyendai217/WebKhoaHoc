package com.dainguyen.DAO.Admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dainguyen.Model.Course;

public class AdminCourseDAO {

	public static List<Course> LoadListCourses(Connection conn) {
		List<Course> list = new ArrayList<Course>();

		String sql = "SELECT course_id, coursename, courseimage, description, info, fee, topic_id From course";

		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				int course_id = rs.getInt("course_id");
				String coursename = rs.getString("coursename");
				String courseimage = rs.getString("courseimage");
				String description = rs.getString("description");
				String info = rs.getString("info");
				double fee = rs.getDouble("fee");
				int topic_id = rs.getInt("topic_id");

				Course course = new Course();

				course.setCourse_id(course_id);
				course.setCoursename(coursename);
				course.setCourseimage(courseimage);
				course.setDescription(description);
				course.setInfo(info);
				course.setFee(fee);
				course.setTopic_id(topic_id);

				list.add(course);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	public static Course LoadCourseInfo(String courseID, Connection conn) {

		Course course = new Course();
		String sql = "SELECT * FROM course" + " WHERE course_id = '" + courseID + "'";

		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				int course_id = rs.getInt("course_id");
				String coursename = rs.getString("coursename");
				String courseimage = rs.getString("courseimage");
				String description = rs.getString("description");
				String info = rs.getString("info");
				Double fee = rs.getDouble("fee");
				int topic_id = rs.getInt("topic_id");

				course.setCourse_id(course_id);
				course.setCoursename(coursename);
				course.setCourseimage(courseimage);
				course.setDescription(description);
				course.setInfo(info);
				course.setFee(fee);
				course.setTopic_id(topic_id);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return course;
	}

	public static List<Course> SearchCourse(String searchCourse, Connection conn) {

		List<Course> list = new ArrayList<Course>();
		String sql = null;
		if (searchCourse == null) {
			sql = "SELECT * from course";
		} else {
			sql = "SELECT * from course WHERE coursename LIKE N'%" + searchCourse + "%'";
					
		}

		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				int course_id = rs.getInt("course_id");
				String coursename = rs.getString("coursename");
				String courseimage = rs.getString("courseimage");
				String description = rs.getString("description");
				String info = rs.getString("info");
				double fee = rs.getDouble("fee");
				int topic_id = rs.getInt("topic_id");

				Course course = new Course();

				course.setCourse_id(course_id);
				course.setCoursename(coursename);
				course.setCourseimage(courseimage);
				course.setDescription(description);
				course.setInfo(info);
				course.setFee(fee);
				course.setTopic_id(topic_id);

				list.add(course);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

}
