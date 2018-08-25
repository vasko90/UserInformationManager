<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
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
            a{
                text-decoration: none;
            }
            button{
                border-radius: 5px;
                border-color: black;
                font-weight: bold;
                padding: 5px;
                margin-right: 20px;
                font-size: 30px;
            }
            button:active{
                background-color: #A69D9D;
            }
        </style>
    </head>

    <body>
        <header>UIM - User Information Manager</header>
        
        
        <a href="${pageContext.request.contextPath}/newUser"><button type="button">Insert new user</button></a>
        <a href="${pageContext.request.contextPath}/list"><button type="button">List of all users</button></a>
        
    </body>
</html>
