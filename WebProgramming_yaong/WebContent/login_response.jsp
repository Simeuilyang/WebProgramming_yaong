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
   
   if(id != null) //�α��� �ϴ� �����
   {
	   sql = "SELECT * from ACCOUNT WHERE Id ='"+ id+"' AND Password='"+ pw +"'";
	   System.out.println(sql);
	   
	   pstmt = conn.prepareStatement(sql);
	   rs = pstmt.executeQuery();
	   
	   if(!rs.next()){ //���̵�, ����� �߸��Ǿ��� ��
	        %>
	        <script>
	        alert("Id�� Password�� �߸��Ǿ����ϴ�. �ٽ� �Է��ϼ���");
	        location.href="login.html";
	        </script>
	        <%
	   }
	   else{ //���̵�, ����� ��ġ���� ��
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