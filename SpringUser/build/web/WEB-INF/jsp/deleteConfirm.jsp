<%-- 
    Document   : deleteConfirm
    Created on : Jul 1, 2018, 8:11:33 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User is deleted!</title>
        <style>
            header{
                 background: red;
                color: white;
                font-size: 40px;
                font-family: sans-serif;
                padding: 20px;
                margin-bottom: 20px;
                width: 673px;
            }
            body{
                font-family: sans-serif;
            }
            button{
                border-radius: 5px;
                border-color: black;
                font-weight: bold;
                padding: 5px;
            }
             button:active{
                background-color: #A69D9D;
            }
        </style>
    </head>
    <body>
        <header>UIM - User Information Manager</header>
        <h1>User is deleted!</h1>
        <a href="${pageContext.request.contextPath}/"><button type="button">Back to main page</button></a> 
    </body>
</html>
