package com.dainguyen.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dainguyen.Model.Course;

public class CourseDAO {
	public static List<Course> LoadKhoaHoc(Connection conn) {
		List<Course> list = new ArrayList<Course>();
		String sql = "Select * from course";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Integer course_id = rs.getInt("course_id");
				String coursename = rs.getString("coursename");
				String courseimage = rs.getString("courseimage");
				String description = rs.getString("description");
				String info = rs.getString("info");
				Double fee = rs.getDouble("fee");
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

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;

	}

	public static List<Course> getCoursebyTopicID(Connection conn, int Strtopic_id) {

		List<Course> list = new ArrayList<Course>();

		String sql = "SELECT * from course WHERE topic_id= ?";

		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, Strtopic_id);

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {

				int course_id = rs.getInt("course_id");
				String coursename = rs.getString("coursename");
				String courseimage = rs.getString("courseimage");
				String description = rs.getString("description");
				String info = rs.getString("info");
				Double fee = rs.getDouble("fee");
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

	public static Course getCoursebyCourseID(Connection conn, int StrCourse_id) {

		Course course = new Course();

		String sql = "SELECT * from course WHERE course_id= ?";

		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, StrCourse_id);

			ResultSet rs = ptmt.executeQuery();

			if (rs.next()) {

				course.setCourse_id(rs.getInt("course_id"));
				course.setCoursename(rs.getString("coursename"));
				course.setCourseimage(rs.getString("courseimage"));
				course.setDescription(rs.getString("description"));
				course.setInfo(rs.getString("info"));
				course.setFee(rs.getDouble("fee"));
				course.setTopic_id(rs.getInt("topic_id"));

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return course;
	}

	

}
