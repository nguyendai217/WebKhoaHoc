package com.dainguyen.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dainguyen.Model.Class;

public class ClassDAO {

	/*Lấy lớp sắp khai giảng theo course_id*/
	public static List<Class> getClassbyCourseID(Connection conn, int StrCourse_id){
		
		List<Class> list= new ArrayList<Class>();
		
		String sql= "SELECT * from class WHERE course_id=?";
		
		try {
			PreparedStatement ptmt= conn.prepareStatement(sql);
			ptmt.setInt(1, StrCourse_id);
			
			ResultSet rs= ptmt.executeQuery();
			
			while(rs.next()){
				Class class_list= new Class();
				
				class_list.setClass_id(rs.getInt("class_id"));
				class_list.setClassname(rs.getString("classname"));
				class_list.setStartday(rs.getString("startday"));
				class_list.setEndday(rs.getString("endday"));
				class_list.setTimestudy(rs.getString("timestudy"));
				class_list.setLocation(rs.getString("location"));
				class_list.setNumber_of_students(rs.getInt("number_of_students"));
				class_list.setTestday(rs.getString("testday"));
				class_list.setCourse_id(rs.getInt("course_id"));
				
				list.add(class_list);
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public static Class getInfobyClassID(Connection conn, int StrClass_id){
		
		Class class_list= new Class();
		
		String sql= "SELECT * from class WHERE class_id= ?";
		
		try {
			PreparedStatement ptmt= conn.prepareStatement(sql);
			ptmt.setInt(1, StrClass_id);
			
			ResultSet rs= ptmt.executeQuery();
			
			while(rs.next()){
				class_list.setClass_id(rs.getInt("class_id"));
				class_list.setClassname(rs.getString("classname"));
				class_list.setStartday(rs.getString("startday"));
				class_list.setEndday(rs.getString("endday"));
				class_list.setTimestudy(rs.getString("timestudy"));
				class_list.setLocation(rs.getString("location"));
				class_list.setNumber_of_students(rs.getInt("number_of_students"));
				class_list.setTestday(rs.getString("testday"));
				class_list.setCourse_id(rs.getInt("course_id"));
				
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return class_list;
	}
	
	
	
}
