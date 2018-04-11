<!doctype html>
<title>Login</title>
<br/><br/><br/><center>
<form action="loggedin.jsp" method="post">
    <table bgcolor="#40E0D0">
        <thead>
            <tr>
        <font color="gray"><center><b>LogIn</b></center></font>
            </tr>
        </thead>
        <tr/><tr/>
        <tr>
            <td><label for="name">Username</label>&ensp;</td>
            <td><input type="text" name="uname"/></td>
        </tr>
        <tr>
            <td><label for="name">Password</label>&ensp;</td>
            <td><input type="password" name="pass"/></td>
        </tr>
    <tfoot><tr align="right">
            <td/>
            <td><input type="submit" value="login" style="background-color: #43C6DB"/>&emsp;</td>
    </tr></tfoot>
    </table>
</form>
    New User? <a href="register.jsp">Register</a>
</center>