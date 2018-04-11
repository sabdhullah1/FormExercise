<%@page import="bean.RegisterUser"%>  
<jsp:useBean id="obj" class="bean.User"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
if(request.getAttribute("pass")!=request.getAttribute("upass")) {
    out.println("Passwords do not match");
    out.print("<a href=\"register.jsp\">Retry registering</a>");
}
else
{
    int status=RegisterUser.register(obj);  
if(status>0){
    out.println("You are successfully registered");
    out.print("<a href=\"login.jsp\">LogIn</a>");
}  
else{
    out.println("Registration failed");
    out.println("<a href=\"login.jsp\">LogIn</a>");
    out.print("<a href=\"register.jsp\">Retry registering</a>");
}  
}
%>  