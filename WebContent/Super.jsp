<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.json.simple.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href = "css/bootstrap.css" />
  <script src = "js/bootstrap.min.js" type = "javascript"></script>
      <meta name="viewport" content="user-scalable=no, initial-scale=1, maximum-scale=1">
      <style>
      body{
         margin: 0px;
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
            /*아래 */
            background-position: 50%;
            background-repeat: no-repeat;
            background-size: cover;
            
            
            border-radius: 30px;
         }
         
         
         
         .content-head{
            
            height: 70px;
            
            display: block;
            /*border-bottom: 1px solid gray;*/
            background-color: #EBE7EB;
         }

         .profile{
            margin-top: 10px;
            float: right;
            display: block;
            right: 0px;
            width: 40px;
            height: 40px;
            overflow: hidden;
            /*아래 */
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
            padding-top: 16.3px;
            padding-right: 10px;
            padding-left: 5px;
            display: inline-block;
            text-align: right;
         }
        
         .content{
            display: block;
            height: 100%;
            background-color: snow;
            overflow-y: scroll;
          }

         .content > div:first-child{
               font-size: 1.5em;
               display: inline-block;
               margin-left: 20%;
               margin-bottom: 2%;

            }
         .foot{

         
           
            text-align: center;
            background-color: #F2F1F2;
         }
         #hidden{ /*프로필 클릭*/
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
            .nav-item {
              float: left !important;
            }
             .collapse .navbar-collapse{
                padding: 0px !important;
            }
            #candel{
            display : block;
            font-size : 1.2em;
            padding-top: 0.3em;
            padding-bottom : 0.3em;
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
            width: 50px;
            height: 50px;
            margin-top: 10px;
         }
      
         .itemlist{
              width: 80%;
         }
         .user_list{
               width: 80%;
             }
             .user_conL div{
               width: 80% ;
             }
             #item_No{
                width: 10% !important;
             }
             #item_Name{
                width: 60% !important;
             }
             #item_Size{
              display: none;
             }
             #item_More{
                width: 10% !important;
             }
             .content > div:first-child{
               font-size: 1.5em;
               display: inline-block;
               margin-left: 10%;
               margin-bottom: 1%;
            }
            
      }
            
      </style>
      
   </head>
   <%String id = (String)session.getAttribute("id"); 
   String in ="admin";
   if(id.equals(in)){%> <!-- admin일때만 접속가능 -->
   <body>
         <div id="hidden" style="display:none;"> 
            <li><a href="mypage2.jsp">마이페이지</a></li>
            <li><a onclick ="logout()" value="로그아웃">로그아웃</a></li>
         </div>
      
      <div class="content-head">
            <div class="user-state">
              <div id="user-name" align="right">Gyu</div>
            <div class="profile" id="BT" onclick="view()" style="background-image: url(pic/contacts.png);"> 
            </div>
            
            </div>
         <div>
         

            <div class="logo_a" id="lg" onclick="viewopen()">
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
        <a class="nav-link" href="coding.html">코딩하기</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="mycode.jsp">나의코딩</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="lab.html">실험실</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="question_form.html">기능문의</a>
      </li>
    </ul>
  </div>
</nav>
      <%
      
      Class.forName("com.mysql.jdbc.Driver");
  	 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysns", "root", "1111");
  	 Statement st = conn.createStatement();
  	 
  	
    String sql = "select * FROM feed ";
	ResultSet rs = st.executeQuery(sql);
	
	int i=1;
      %>
      <div class="content">
         <div>Manage</div>
         <div class="mylist" align="center">
            <div class="itemlist">
               <div class="item" id="item_No" style=" width: 10% ">No</div>
               <div class="item" id="item_Name" style=" width: 50%">Name</div>
               <div class="item" id="item_More" style=" width: 15%">More</div>
            </div>
            <%
            while(rs.next()){ 
            	String no = rs.getString("no");
            	String name = rs.getString("title");
           		 String code = rs.getString("jsonobj");
           		 if(i>0){%>
            	<script>
            	function view<%=no%>() {
                    if(user_content_<%=no%>.style.display=="none") {
                      user_content_<%=no%>.style.display="block";
                      
                    }
                    else {
                      user_content_<%=no%>.style.display="none";
                      
                    }
                  }
                  </script>
                  <%}
            
       		
       		
            %>
            <div class="user_list">
            <input type = "checkbox" id = "num" name = "num" value = <%=no %>>
               <div class="item" id="item_No" style=" width: 10%; padding-left: 5px;"><%=no %></div>
               <div class="item" id="item_Name" style="width: 50%;"><%=name%></div>
               <%if(i>0){ %>
               <div class="item" id="item_More_<%=no %>" style=" width: 15%;" id="code1" onclick="view<%=no%>()">more</div>
               
            </div>
            <div class="user_conL" id="user_content_<%=no %>" style="display:none; width:60%;">
                        <%=code %>
            </div> 
            <%} %>  
                     <%i++; } 
            
                     %>
                     <a id = "candel" onclick = "del(document.getElementsByName('num'))" value = "del">delete</a>
         </div>
         
         
      </div>
      
      <%
      
      Class.forName("com.mysql.jdbc.Driver");
  	 Connection conn2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysns", "root", "1111");
  	 Statement st2 = conn2.createStatement();
  	 
  	
    String sql2 = "select * FROM question ";
	ResultSet rs2 = st2.executeQuery(sql2);
	
	i=1;
	
	
      %>
      <div class="content">
         <div>질문 목록(관리자)</div>
         <div class="mylist" align="center">
            <div class="itemlist">
               <div class="item" id="item_No" style=" width: 10% ">No</div>
               <div class="item" id="item_Name" style=" width: 50%">Name</div>
               <div class="item" id="item_More" style=" width: 15%">More</div>
            </div>
            <%
            
            while(rs2.next()){ 
            	String no2 = rs2.getString("no");
            	String name2 = rs2.getString("title");
           		 String code2 = rs2.getString("jsonobj");
           		 if(i>0){%>
            	<script>
            	function view<%=no2%>() {
                    if(user_content_<%=no2%>.style.display=="none") {
                      user_content_<%=no2%>.style.display="block";
                      
                    }
                    else {
                      user_content_<%=no2%>.style.display="none";
                      
                    }
                  }
                  </script>
                  <%}
            
       		
       		
            %>
            <div class="user_list">
            <input type = "checkbox" id = "num2" name = "num2" value = <%=no2 %>>
               <div class="item" id="item_No" style=" width: 10%; padding-left: 5px;"><%=no2 %></div>
               <div class="item" id="item_Name" style="width: 50%;"><%=name2%></div>
               <%if(i>0){ %>
               <div class="item" id="item_More_<%=no2 %>" style=" width: 15%;" id="code1" onclick="view<%=no2%>()">more</div>
               
            </div>
            <div class="user_conL" id="user_content_<%=no2 %>" style="display:none; width:60%;">
                        <%=code2 %>
            </div> 
            <%} %>  
                     <%i++; } 
            
                     %>
                     <a onclick = "del2(document.getElementsByName('num2'))" >delete</a>
         </div>
         
         
      </div>
      <div class="foot">
         <div>제작자 : YT & MG -교내 실습 프로젝트</div>
          <div>주소 : 서울특별시 노원구 화랑로 815 삼육대학교 - </div>
      </div>
   </body>
   
</html>
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
         function view() {
           if(hidden.style.display=="none") {
             hidden.style.display="block";
             BT.value = "닫힘";
           }
           else {
             hidden.style.display="none";
             BT.value = "열림";
           }
         }

         function viewopen() {
           if(naveid.style.display=="none") {
             naveid.style.display="block";
             lg.value = "닫힘";
           }
           else {
             naveid.style.display="none";
             lg.value = "열림";
           }
         }
         
         function logout() {
        		if(confirm("로그아웃 하시겠습니까?") == true) {
        			AJAX.call("logout.jsp", null, function (data) {
        				window.location.href = "index.html";
        			});

        		}
        	}
         function del(k){
        	 for (var i = 0; i <k.length;i++)
        		 if (k[i].checked)
        			 {
        			 var params = "num="+k[i].value;
        			 AJAX.call("Super2.jsp", params, function(data) {
        				 alert("삭제하였습니다");
        				 window.location.href="Super.jsp";
        				});
        			 }
        	 		//alert(k[i].value);
         }  
         function del2(k){
        	 for (var i = 0; i <k.length;i++)
        		 if (k[i].checked)
        			 {
        			 var params = "num="+k[i].value;
        			 AJAX.call("Super3.jsp", params, function(data) {
        				 alert("삭제하였습니다");
        				 window.location.href="Super.jsp";
        				});
        			 }
        	 		//alert(k[i].value);
         }  
        </script >
        <%}else{
   out.print("이용할수 없는 페이지 입니다.");};%>