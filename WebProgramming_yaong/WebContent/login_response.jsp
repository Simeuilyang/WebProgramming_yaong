<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page language="java" import="java.text.*, java.sql.*" %>   
<!DOCTYPE html>
<html> 
<head>
<meta charset="EUC-KR">
<title>login_response</title>
</head>
<body>
<%
   String serverIP="localhost";
   String strSID="xe";
   String portNum="1600";
   String user="webp";
   String pass="web123";
   String url="jdbc:oracle:thin:@"+serverIP+":"+portNum+":"+strSID;
   
   Connection conn=null;
   PreparedStatement pstmt;
   ResultSet rs;
   Class.forName("oracle.jdbc.driver.OracleDriver");
   conn=DriverManager.getConnection(url,user,pass);
   
   System.out.println("Connection success");
   
   
   String id=request.getParameter("id");  
   String pw=request.getParameter("password");
   String sql = null;
   
   if(id != null) //로그인 하는 사용자
   {
	   sql = "SELECT * from ACCOUNT WHERE Id ='"+ id+"' AND Password='"+ pw +"'";
	   System.out.println(sql);
	   
	   pstmt = conn.prepareStatement(sql);
	   rs = pstmt.executeQuery();
	   
	   if(!rs.next()){ //아이디, 비번이 잘못되었을 때
	        %>
	        <script>
	        alert("Id나 Password가 잘못되었습니다. 다시 입력하세요");
	        location.href="login.html";
	        </script>
	        <%
	   }
	   else{ //아이디, 비번이 일치했을 때
		   %>
           <script>
           location.href="index_afterlogin.html";
           </script>
           <%
	   }
   }
%>  
</body>
</html>