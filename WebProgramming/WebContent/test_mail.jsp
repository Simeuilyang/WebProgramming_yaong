<%@ page contentType="text/html; charset=UTF-8" %>



<%@ page import="web.mail.*"  %>
 
<%
MailSend ms = new MailSend();
ms.MailSend();
 
out.println("COMPLETE");
%>
