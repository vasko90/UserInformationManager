
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
            tr:nth-child(odd){
                background-color: rgb(243, 229, 216);
            }
            td{
                padding: 5px;
                font-size: 20px;
            }
             button:active{
                background-color: #A69D9D;
            }
        </style>
    </head>
    <body>
        <header>UIM - User Information Manager</header>
        <h1>User details</h1>
        <table>
            <tr>
                <td>Username:</td>
                <td>${user.name}</td>
            </tr>
            <tr>
                <td>Password:</td>
                <td>${user.password}</td>
            </tr>
            <tr>
                <td>JMBG:</td>
                <td>${user.jmbg}</td>
            </tr>
            <tr>
                <td>Phone number:</td>
                <td>${user.phoneNumber}</td>
            </tr>
        </table>
        <br>
        <a href="${pageContext.request.contextPath}/"><button type="button">Back to main page</button></a> 
    </body>
</html>
