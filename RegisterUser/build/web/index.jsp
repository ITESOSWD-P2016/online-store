<%-- 
    Document   : index
    Created on : Apr 5, 2016, 8:04:48 PM
    Author     : alexabeas
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Register</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="wrapper">
            <div class="container">
                <h1>Register</h1>

                <form name="RegistryInput" action="response.jsp" class="form">
                    <input type="text" name="username" placeholder="Username">
                    <input type="text" name="email" placeholder="Email">
                    <input type="text" name="emailCon" placeholder="Confirm Email">
                    <input type="password" name="password" placeholder="Password">
                    <input type="password" name="passwordCon" placeholder="Confirm Password">
                    <button type="submit">Register</button>                                   
                </form>
            </div>
        </div>
    </body>
</html>
