<%-- 
    Document   : response
    Created on : Apr 7, 2016, 6:20:58 PM
    Author     : alexabeas
--%>

<%@page import="mysql_test.MySQL_Test"%>
<%@page import="mysql_test.MySQL"%>
<%@page import="javax.validation.constraints.Null"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.SQLException"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Response</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="wrapper">
            <div class="container">
                <%--  
                 <jsp:useBean id="usernamebean" scope="session" class="newpackage.UserHandler" />
                 <jsp:setProperty name="usernamebean" property="username" />

                <jsp:useBean id="emailbean" scope="session" class="newpackage.UserHandler" />
                <jsp:setProperty name="emailbean" property="email" />

                <jsp:useBean id="emailConbean" scope="session" class="newpackage.UserHandler" />
                <jsp:setProperty name="emailConbean" property="emailCon" />

                <jsp:useBean id="passbean" scope="session" class="newpackage.UserHandler" />
                <jsp:setProperty name="passbean" property="password" />

                <jsp:useBean id="passConbean" scope="session" class="newpackage.UserHandler" />
                <jsp:setProperty name="passConbean" property="passwordCon" value="" />
                --%>

                <%
                    String un = request.getParameter("username");
                    String em = request.getParameter("email");
                    String emc = request.getParameter("emailCon");
                    String pass = request.getParameter("password");
                    String pc = request.getParameter("passwordCon");
                    if (un.length() == 0 || un == null) {
                %>
                <%--   <p><jsp:getProperty name="usernamebean" property="username" /> is not a valid username</p> --%>
                <h1>Invalid username</h1>

                <%
                } else if (em.length() == 0 || un == null) {
                %>
                <%--  <p><jsp:getProperty name="emailbean" property="email" /> is not a valid email</p> --%>
                <h1>Invalid email</h1>
                
                <%
                } else if (emc== null) {
                %>
                  <p><jsp:getProperty name="emailConbean" property="emailCon" /> email confirmation is incorrect</p>
                <h1>Email confirmation doesn´t match email</h1>
                
                <%
                } else if (pass.length() == 0 || un == null) {
                %>
                  <p><jsp:getProperty name="passbean" property="password" /> is not a valid email</p>
                <h1>Invalid password</h1>
                
                <%
                } else if (pc == null) {
                %>
                  <p><jsp:getProperty name="passConbean" property="passwordCon" /> email confirmation is incorrect</p>--%>
                <h1>Password confirmation doesn´t match password</h1>
                
                <%
                    } else {
                        try {
                            MySQL db = new MySQL();
                            db.MySQLConnect();

                            String Query ="INSERT INTO 'User'('UserName','Email','Password') VALUES('sebas', 'is68424', '123')";
                            

                            /* Se crea una declaración y se establece el Query que se
            desea ejecutar
                             */
                            db.comando = db.conexion.createStatement();
                            int r = db.comando.executeUpdate(Query);

                            
                        } catch (SQLException ex) {
                            Logger.getLogger(MySQL_Test.class.getName()).log(Level.SEVERE, null, ex);
                        }
                    }
                %>
                 <h1>Thank you for registering, <jsp:getProperty name="usernamebean" property="username" /> !</h1> 
            </div>>
        </div>
    </body>
</html>
