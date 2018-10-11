<%-- 
    Document   : loginerror
    Created on : Jan 16, 2017, 10:27:13 AM
    Author     : Adish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>KALRAV'17</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
   
    <style type="text/css">
        *{
            margin: 0px;
            padding: 0px;
        }
        body{
            background-color: #f9fbff ;
                
        }
        #text{
            font-size: 36px;
            margin-top: 20%;
        }
        #error{
            position:absolute;
            margin-top: 60px;
            padding-top: 170px;
            margin-left: 165px;
           
        }
    </style>
        
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-xs-12 col-md-8 text-center">
                    <img src="002.png" class="img-responsive " width="60px" height="60px" id="error">
                    <p id="text">OOPS!INVALID username or password!!!</p>
                </div>
            </div>
        </div>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
