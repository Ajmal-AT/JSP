package com.crud.jsp.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import com.crud.jsp.Bean.User;



public class EmpDAO {

		public static Connection getConnection() {
			Connection con=null;
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hope_crud","root","128665");
			} catch (Exception e) {
				System.out.println(e);
			}
			return con;
		}
		
		public static int AddEmployees(User emp) {
			int status=0;
			try {
				Connection con=EmpDAO.getConnection();
				PreparedStatement st=con.prepareStatement("insert into hope_emp(name,password,email,country)values(?,?,?,?)");
				st.setString(1, emp.getName());
				st.setString(2, emp.getPsd());
				st.setString(3, emp.getEmail());
				st.setString(4, emp.getCtry());
				status=st.executeUpdate();
			} catch (Exception e) {
				System.out.println(e);
			}
			
			return status;
		}
		
		public static List<User> ViewEmployees() {
			ArrayList<User> l1=new ArrayList<User>();
			
			try {
				Connection con=EmpDAO.getConnection();
				PreparedStatement st=con.prepareStatement("select * from hope_emp");
				ResultSet rs=st.executeQuery();
				while(rs.next()) {
					User e1 = new User();
					e1.setId(rs.getInt(1));
					e1.setName(rs.getString(2));
					e1.setPsd(rs.getString(3));
					e1.setEmail(rs.getString(4));
					e1.setCtry(rs.getString(5));
					l1.add(e1);
				}
			} catch (Exception e) {
				System.out.println(e);
			}
			return l1;
		}
		
		public static List<User> EditGetEmployees(String id) {
			ArrayList<User> l1=new ArrayList<User>();
			
			try {
				Connection con=EmpDAO.getConnection();
				PreparedStatement st=con.prepareStatement("select * from hope_emp where id="+id+"");
				System.out.println(st);
				System.out.println(id);
				ResultSet rs=st.executeQuery();
				
				while(rs.next()) {
					User e1 = new User();
					e1.setId(rs.getInt(1));
					e1.setName(rs.getString(2));
					e1.setPsd(rs.getString(3));
					e1.setEmail(rs.getString(4));
					e1.setCtry(rs.getString(5));
					l1.add(e1);
				}
			} catch (Exception e) {
				System.out.println(e);
			}
			return l1;
		}
		
		public static int UpdateEmployee(User emp, String id) {
			int status=0;
			try {
				Connection con=EmpDAO.getConnection();
				PreparedStatement st=con.prepareStatement("UPDATE hope_emp SET name=?, password=?, email=?, country=? WHERE id="+id+"");
				st.setString(1, emp.getName());
				st.setString(2, emp.getPsd());
				st.setString(3, emp.getEmail());
				st.setString(4, emp.getCtry());
				status=st.executeUpdate();
			} catch (Exception e) {
				System.out.println(e);
			}
			
			return status;
		}
		
		public static int DeleteEmployee(String id) {
			int status = 0;
			try {
				Connection con=EmpDAO.getConnection();
				int d = Integer.parseInt(id);
				PreparedStatement st=con.prepareStatement("DELETE FROM hope_emp WHERE id="+d+"");
				System.out.println(st);
				status=st.executeUpdate();
			} catch (Exception e) {
				System.out.println(e);
			}
			
			return status;
		}
}
