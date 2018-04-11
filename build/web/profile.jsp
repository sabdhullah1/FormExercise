<%@page import="bean.User"%>
<!doctype html>
<div align="right"><a href="logout.jsp">LogOut</a></div>
<%
    String name=null;
    name=session.getAttribute("name").toString();
    out.print("<br/><br/><br/><center><h1>Hello there, "+name+"</h1></center>");
%>