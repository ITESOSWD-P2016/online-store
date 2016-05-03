
<%-- 
    Document   : ProductConf
    Created on : May 2, 2016, 8:49:37 PM
    Author     : alexabeas
--%>

<%@page import="newpackage.ProductHandler"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update stock</title>
        
    </head>
    <body>
        <div class="wrapper">
            <div class="container">
                 <%
                    String p = request.getParameter("product");
                    if (p.length() == 0 || p == null) {
                %>
                <h1>Invalid product, try again</h1>

                <%
                } else {
                            ProductHandler ph= new ProductHandler(p);
                             if (ph.findProduct()) //si el producto existe en la bd
                             {             
                 %>  
                 <h1><%= ph.Product %></h1>
                                <form name="productoptions" action="Result.jsp" class="form">
                                <input type="text" name="product" value="<%= ph.Product %>">
                                <input type="text" name="stock" placeholder="Update, Add, Remove Stock..">
                                <button type="submit" name='update'>Update</button>                                 
                                <button type="submit" name='add'>Add</button>                                
                                <button type="submit" name='remove'>Remove</button>
                                <button type="submit" name='view'>View Product History</button>
                                </form>
                 <%
                               }
                               else
                                {
                  %>          <h1>Product doesn't exist in database, try again</h1>
                 <% 
                                }

                                
                }
                 %>             
                
            </div>
        </div>
    </body>
</html>
