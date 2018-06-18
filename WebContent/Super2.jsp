<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>

<%
	request.setCharacterEncoding("UTF-8");
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysns", "root", "1111");
	Statement st = conn.createStatement();
	String noo = request.getParameter("num");
	String sql2 = "delete from feed where no = "+noo;
	st.executeUpdate(sql2);
	out.println("delete");
%>