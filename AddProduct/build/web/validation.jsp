<%-- 
    Document   : validation
    Created on : Apr 5, 2016, 6:12:40 PM
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%!
            String Idid;
            String Idname;
            String Idprice;
            String Idtipe;
            String Idcategory;
            String Iddescription;  
        %>
    </head>
    <body>
        <%
            Idid            = request.getParameter("Idid");
            Idname          = request.getParameter("Idname");
            Idprice         = request.getParameter("Idprice");
            Idtipe          = request.getParameter("Idtipe");
            Idcategory      = request.getParameter("Idcategory");
            Iddescription   = request.getParameter("Iddescription");
            
            
            if(request.getParameter("AcceptBtn") !=null){
                System.out.println("ID:         " + Idid);
                System.out.println("Name:       " + Idname);
                System.out.println("Price:      " + Idprice);
                System.out.println("Type:       " + Idtipe);
                System.out.println("Category:   " + Idcategory);
                System.out.println("Description:" + Iddescription);
                
            }if(request.getParameter("CancelBtn")!=null){
                response.sendRedirect("index.jsp");
            }
        %>
        
        
    </body>
</html>
