<%-- 
    Document   : addProduct
    Created on : Apr 4, 2016, 7:45:59 PM
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Add Product</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/sabino.css">
        
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    
    <body class="body">
        <h1 align="center">Add Product</h1>
        <div class=" col-md-2">
            
        </div> 
        
        <div class=" col-md-8">
            
            <form name="formulary" action="validation.jsp" method="post">
                <div class="form-group">
                    <label class="col-sm-2 control-label labelInputText">ID</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control marginInputs" name="Idid" id="Idid" placeholder="Insert ID">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label labelInputText">Name</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control marginInputs" name="Idname" id="Idname" placeholder="Insert Name">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label labelInputText">Price</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control marginInputs" name="Idprice" id="Idprice" placeholder="Insert Price">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label labelInputText">Tipe</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control marginInputs" name="Idtipe" id="Idtipe" placeholder="Insert Tipe">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label labelInputText">Category</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control marginInputs" name="Idcategory" id="Idcategory" placeholder="Input Category">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label labelInputText">Description</label>
                    <div class="col-sm-10">
                        <textarea class="form-control marginInputs" name="Iddescription" id="Iddescription" placeholder="Input Description" rows="5"></textarea>
                    </div>
                </div>

                <button style="float:right;" type="submit" class="btn btn-danger btnRight" name="CancelBtn" id="CancelBtn">Cancel</button>
                <button style="float:right;" type="submit" class="btn btn-success btnRight " name="AcceptBtn" id="AcceptBtn">Add Product</button>
            </form>
            
        </div> 
        <div class=" col-md-2">
            
        </div>
    </body>
</html>
