<%-- 
    Document   : response
    Created on : Apr 7, 2016, 6:20:58 PM
    Author     : alexabeas
--%>

<%@page import="java.awt.HeadlessException"%>
<%@page import="newpackage.InsertUser"%>
<%@page import="javax.validation.constraints.Null"%>


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
                

                <%
                    String un = request.getParameter("username");
                    String em = request.getParameter("email");
                    String emc = request.getParameter("emailCon");
                    String pass = request.getParameter("password");
                    String pc = request.getParameter("passwordCon");
                    if (un.length() == 0 || un == null) {
                %>
                <%--  <p> ${un} is not a valid username</p> --%>
                <h1>Invalid username</h1>

                <%
                } else if (em.length() == 0 || un == null) {
                %>
                 <%--<p>${em} is not a valid email</p>--%>
                <h1>Invalid email</h1>
                
                <%
                } else if (!emc.equals(em)) {
                %>
                <%--<h1>  <p>< ${em}is not the same as ${emc}</p>--%>
                <h1>Email confirmation does NOT match email</h1>
                
                <%
                } else if (pass.length() == 0 || un == null) {
                %>
                 <%-- <p>${pass} is not a valid password</p>--%>
                <h1>Invalid password</h1>
                
                <%
                } else if (!pc.equals(pass)) {
                %>
               <%--   <p><$(pass) is not the same as $(pc)</p>--%>
                <h1>Password confirmation does NOT match password</h1>
                
                <%
                    } else {
                        
                              InsertUser iu = new InsertUser();
                                iu.insertUser(un, em, pass);
                        
                        
                            %>
                  <h1>Thank you for registering, <%= un %> !</h1>
                  <%
                    }
                %>
                 
            </div>>
        </div>
    </body>
</html>
