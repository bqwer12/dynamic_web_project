<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="org.json.simple.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<html>
   <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href = "css/bootstrap.css" />
  <script src = "js/bootstrap.min.js" type = "javascript"></script>
      <meta name="viewport" content="user-scalable=no, initial-scale=1, maximum-scale=1">
      <style>

      .content {
        margin-top: 40;
      }
      body{
         margin: 0px;
      }
         .nave{
            
            position: fixed;
            width: 200px;
            height: 80%;
            background-color: #F6E0F2;
            
            top: 0px;
            left: : 0px;
            -webkit-animation-name: menubar;
             -webkit-animation-duration: 0.5s;
             animation-name: menubar;
             animation-duration: 0.5s;
         }
         
         @keyframes menubar {
          
          0%   {background-color:#F6E0F2; left: -15px;top: 0px;}
          100% {background-color:#F6E0F2; left: 0px;top: 0px;}
         }
         .name div{
            list-style: none;
            text-decoration: none;

         }
         .logo{
            float: left;
            
         }
         .logo-f{
            float: left;
            margin-bottom: 28px; 
         }
         .logo img{
            float: left;
            width: 70px;
            height: 60px

         }
         .logo_a{
            display:inline-block;
            
            
         }
         .logo_text{
            text-align: 1em;
            display: inline-block;
            

         }
         .logo_text h5{
            padding-top: 15px;
            float: left;
            display: inline-block;
            margin: 0px;
            font-size: 0.8em;

         }
         .logo_text h6{
            margin: 0px;
            font-size: 0.6em;
         }
         .logo_text1 li{
            margin-top: 3px;
            list-style: none;
         }
         .logo_text1 a{
            text-decoration: none;
            color: black;
         }
         .logo_text1 a:hover{
            opacity: 0.1;
         }
         .pro{

            display: inline-block;
            float: right;
            width: 45px;
            height: 45px;
            overflow: hidden;
            margin-left:10px;
            /*�Ʒ� */
            background-position: 50%;
            background-repeat: no-repeat;
            background-size: cover;
            
            
            border-radius: 30px;
         }
         .start{
            font-size: 0.9em;
            padding-bottom: 5px;
            border-bottom: 1px solid gray; 
            padding-top: 85px;
            font-weight: bold;
         }
         .start_1{
            font-size: 1.1em;
            padding-top: 12px;
            padding-bottom: 12px;
            font-weight: bold;
         }
         .start_1:hover{
            opacity: 0.8;
         }
         .logo_pic{
            padding-left: 10px;
            display: block;
            float: left;
            width: 50px;
            height: 40px;
            overflow: hidden;
            padding-top: 5px;
            padding-right: 5px;
            /*�Ʒ� */
            background-position: 50%;
            background-repeat: no-repeat;
            background-size: cover;
         }
         .content-head{
            
            height: 117px;
            
            display: block;
            /*border-bottom: 1px solid gray;*/
            background-color: #EBE7EB;
         }

         .profile{
            margin-top: 21.5px;
            float: right;
            display: block;
            right: 0px;
            width: 40px;
            height: 40px;
            overflow: hidden;
            /*�Ʒ� */
            background-position: 50%;
            background-repeat: no-repeat;
            background-size: cover;
            border-radius: 50%;
         }
         .user-state{
            display: inline-block;
            float: right;
         }
         #user-name{
            float: right;
            display: block;
            padding-top: 27.8px;
            padding-right: 10px;
            padding-left: 5px;
            display: inline-block;
            text-align: right;
         }
         /*.menu{
         display: inline-block;
         float: left;
         font-size: 1.5em;
         margin-top: 20px;
         }
         */
         .content{
            display: block;
            background-color: snow;
         }
         .content > div:first-child{
               font-size: 1.5em;
               display: inline-block;
               margin-left: 20%;
               margin-bottom: 2%;
            }
         .foot{
            margin-top: 21%;
            text-align: center;
            background-color: #F2F1F2;
         }
         #hidden{
            position: absolute;
            background-color: skyblue;
            list-style: none;
            padding: 10px 15px;
            border-radius: 10px;
            
            
            top: 60px;
            right: 10px;
             -webkit-animation-name: profile;
             -webkit-animation-duration: 0.5s;
             animation-name: profile;
             animation-duration: 0.5s;
         }

         @keyframes profile {
          
          0%   {background-color:#050099; right: :10px; top:40px;}
          100% {background-color:skyblue; right: :10px; top:60px;}
         }
         
            .item{
               display: inline-block;
               text-align: left;
            }
            .itemlist{
               border-bottom: 1px solid black;
               width: 60%;
            }
            .user_list{
               width: 60%;
               padding:25px 0px; 
               border-bottom: 1px solid gray;
            }
            .user_conL div{
               width: 60%;
               display: inline-block;
               margin-left: auto;
               text-align: left;
               border-bottom: 1px dotted orange;
            }
/*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/
         @media (max-width: 600px) {
            .nave{
            width: 90px;
            height: 90%;
         }
            .start_1{

               display: none;
            }
            .logo_text{
               display: none;
            }
            .start{
               padding-top: 90px;
               font-size: 0.9em;
            }
            #site{
               padding-top: 190px;
            }
            .logo_pic{
               width: 65px;
               height: 55px;
            }
            .content-head{
               height: 65px;
            }
            
            .menu{
               display: none;
               font-size: 1.3em;
               padding : 5px 2px;
               border: 1px solid gray;
               background-color: F6E0F2;
               border-radius: 5px;
               margin-top: 5px
            }
            #user-name{
               display: none;
            }
            .profile{
            margin-top: 18px;
         }
            
      }
            
      </style>
      <script>
      function view() {
          if(hidden.style.display=="none") {
            hidden.style.display="block";
            BT.value = "����";
          }
          else {
            hidden.style.display="none";
            BT.value = "����";
          }
        }

      </script>
   </head>
   <body>
         <div id="hidden" style="display:none;"> 
            <li ><a onclick ="logout()">�α׾ƿ�</a></li>
            <li ><a href="mypage2.jsp">����������</a></li>
         </div>
      
      <div class="content-head">
            <div class="user-state">
              <div id="user-name" align="right">Lee Myeong Gyu</div>
            <div class="profile" id="BT" onclick="view()" style="background-image: url(pic/contacts.png);"> 
            </div>
            
            </div>
         <div>
         


            <div class="logo_a" id="lg" onclick="view1()">
               <div class="logo"  href="index_1.html">
                  <a href="main.html"><img " value="img"  class="pro" src=" pic/logo.png"" alt="profile"></a>
               </div>
               <div class="logo_text">
                  <h5>Pooming</h5>
                  <h5>Pooming</h5>
                  <h6>Make Easy Coding</h6>
               </div>
            </div>
         </div>
         <div class="menu"></div>
      </div>

      <nav class="navbar navbar-expand-lg navbar-light bg-light">

  <div class="collapse navbar-collapse" id="navbarColor03">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="coding.html">�ڵ��ϱ�</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="mycode.jsp">�����ڵ�</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="lab.html">�����</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="question_form.html">��ɹ���</a>
      </li>
    </ul>
  </div>
</nav>
            <%
             Class.forName("com.mysql.jdbc.Driver");
         	 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysns", "root", "1111");
         	 Statement st = conn.createStatement();
         	 String id = (String)session.getAttribute("id");
             String sql = "select id,name FROM user WHERE id = '" + id + "'";
			 ResultSet rs = st.executeQuery(sql);
			 rs.next();
             String username = rs.getString("name");
             %>
      <div class="content">
         <center>
          <table border="1" width="300" style="text-align:center";>
           <tr>
             <td>id</td>
             <td><%=id %></td>
           </tr>
           <tr>
             <td>name</td>
             <td><%=username %></td>
           </tr>
           
          </table>
          <a href="mypage3.jsp">�����ϱ�</a>
         </center>
      </div>
      <div class="foot">
        <div>������ : YT & MG -���� �ǽ� ������Ʈ</div>
          <div>�ּ� : ����Ư���� ����� ȭ���� 815 �������б� - </div>
      </div>
   </body>
</html>
<%rs.close();
st.close();
conn.close(); %>
<script src="js/jquery-1.12.0.min.js"></script>
<script src="js/core.js"></script>
<script language="javascript">
$(document).ready(function() {
	AJAX.call("session.jsp", null, function (data) {
		var id = data.trim();
		if (id == "null") {
			window.location.href = "index.html";
		}
		else {
			start(id);
		}
	});
});
function start(id) {
	
}
         
         function view1() {
           if(naveid.style.display=="none") {
             naveid.style.display="block";
             lg.value = "����";
           }
           else {
             naveid.style.display="none";
             lg.value = "����";
           }
         }
         function view2() {
           if(user_content.style.display=="none") {
             user_content.style.display="block";
             code1.value = "����";
           }
           else {
             user_content.style.display="none";
             code1.value = "����";
           }
         }
         function view3() {
           if(user_content1.style.display=="none") {
             user_content1.style.display="block";
             code2.value = "����";
           }
           else {
             user_content1.style.display="none";
             code2.value = "����";
           }
         }
         function logout() {
        		if(confirm("�α׾ƿ� �Ͻðڽ��ϱ�?") == true) {
        			AJAX.call("logout.jsp", null, function (data) {
        				window.location.href = "index.html";
        			});

        		}
        	}
      </script>