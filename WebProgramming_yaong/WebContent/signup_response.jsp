<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page language="java" import="java.text.*, java.sql.*" %>   
<!DOCTYPE html>
<%
	//���ڵ�
	request.setCharacterEncoding("UTF-8");
%>

<html> 
<head>
<meta charset="EUC-KR">
<title>signup_response</title>
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
   
   //System.out.println("Connection success");
   
   
   
   
   String id=request.getParameter("id");  
   String pw=request.getParameter("password");
   String name=request.getParameter("username");
   String email=request.getParameter("email");
   String pnum=request.getParameter("phonenum");
   String sex=request.getParameter("sex");
   String birthday=request.getParameter("birth");
   String who=request.getParameter("who");
   //System.out.println(loginid +" "+ loginpw);
   
   //System.out.println(id + " " +pw + " "+name + " "+email + " "+pnum + " "+sex + " "+birthday + " "+who);
   String sql = null;
   
   sql = "INSERT INTO ACCOUNT VALUES ('"+id+"','"+pw+"','"+name+"','"+email+"','"+pnum+"','"+sex+"', TO_DATE('"+birthday+"','yyyy-mm-dd'),'"+who+"')";
   
   pstmt = conn.prepareStatement(sql);
   int a = pstmt.executeUpdate();
   conn.commit();
   
   System.out.println(a+"���� ����Ǿ����ϴ�.");
 
%>  
   <script>
   alert("ȸ�������� �Ϸ�Ǿ����ϴ�.");
   document.location.href="login.html";
   </script>
   
 
</body>
</html>