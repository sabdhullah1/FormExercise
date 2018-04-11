<%@page import="bean.LoginUser"%>  
<jsp:useBean id="obj" class="bean.LoginBean"/>  
  
<jsp:setProperty property="*" name="obj"/>  
<jsp:getProperty name="obj" property="uname" />
<%
boolean status=LoginUser.validate(obj);
out.println(status);
if(status){  
session.setAttribute("name",LoginUser.getName());
%><jsp:forward page="profile.jsp"/><%
}  
else  
{  
out.println("<font color=red>Sorry, username or password error");
out.print("<a href=\"login.jsp\">Retry logIn</a>");
session.setAttribute("name",LoginUser.getName());
}  
%>  