<%-- 
    Document   : Result
    Created on : May 2, 2016, 10:56:18 PM
    Author     : alexabeas
--%>

<%@page import="newpackage.ProductHandler"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
    </head>
    <body>
        <%
                    String newstock = request.getParameter("stock");
                    String product = request.getParameter("product");
                    int res=0;
                    ProductHandler ph= new ProductHandler(product);
                                if (request.getParameter("update")!=null) {
                                 //perform update
                                    res=ph.updateStock(Integer.parseInt(newstock));
                    
                                }
                                else if(request.getParameter("add")!=null){
                                    res=ph.addStock(Integer.parseInt(newstock));

                                }
                                else if(request.getParameter("remove")!=null){
                                    res=ph.removeStock(Integer.parseInt(newstock));

                                }
                                else if(request.getParameter("view")!=null){
                                    String Query = "SELECT * FROM Product History ";
            
            
            /* Se crea una declaración y se establece el Query que se
            desea ejecutar
             */
           try { 
            ph.db.comando = ph.db.conexion.createStatement();
            ph.db.registro = ph.db.comando.executeQuery(Query);

            /* Se imprimen los registros que estén guardados en 
            la base de datos
             */
            while (ph.db.registro.next()) {
                
                System.out.println("Nombre: " + ph.db.registro.getString(1) + 
                        "\nApellido: " + ph.db.registro.getString(2) +
                        "\nEmail: " + ph.db.registro.getString(3));
                
                System.out.println("------------------------------------------");
            }
        } catch (SQLException ex) {
            
        }

                                }
                %>
                <h1><%= ph.Product %></h1>
                <h2><%= res %> row affected</h2>
    </body>
</html>
