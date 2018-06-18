<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>

<%
	request.setCharacterEncoding("UTF-8");
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysns", "root", "1111");
	Statement st = conn.createStatement();
	String id = request.getParameter("uid");
	String name = request.getParameter("uname");
	String pass = request.getParameter("upass");
	String sql = "update user set name = '"+name+"', password = '" + pass + "' where id = '" +id+ "'";
	st.executeUpdate(sql);
	
	out.println("fixed");
%>