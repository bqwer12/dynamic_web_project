<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.json.simple.*" %>
<% 
   request.setCharacterEncoding("UTF-8");

   ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());
   sfu.setSizeMax(16 * 1024 * 1024);
   sfu.setHeaderEncoding("UTF-8"); 
   
   try {
      String id = null, desc = null,title = null, projname = null;
      String test = (String)session.getAttribute("id");
      JSONArray images = new JSONArray();
      List items = sfu.parseRequest(request);
      Iterator iter = items.iterator();
      int k = 0;
      while(iter.hasNext()) {
         FileItem item = (FileItem) iter.next();
         if (item.isFormField()) {
            String name = item.getFieldName();
            String value = item.getString("UTF-8").trim();
            if(name.equals("id")) {
               id = test;
               System.out.println(name + ": " + value);
            }
            else if(name.equals("desc")) {
               desc = value;
               System.out.println(name + ": " + value);
            }else if(name.equals("projname")){
            	projname = value;
                System.out.println(name + ": " + value);
            }
            System.out.println(name + ": " + value);
         }
      }
      
      // create an JSON object for the database insertion
      JSONObject jsonobj = new JSONObject();
      jsonobj.put("id", id);
      jsonobj.put("desc", desc);
      String jsonString = request.getParameter("coding");
      // database insertion logic
      Class.forName("com.mysql.jdbc.Driver");
      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysns", "root", "1111");
      Statement st = conn.createStatement();
      
      String sql = "INSERT INTO question(id, jsonobj,title) VALUES('" + id + "', '" + desc +"','" +projname+"')";
      st.executeUpdate(sql);
      
      out.println("OK");
      
      st.close();
      conn.close();
      
   } catch(Exception ex) {
      ex.printStackTrace();
   }
%>