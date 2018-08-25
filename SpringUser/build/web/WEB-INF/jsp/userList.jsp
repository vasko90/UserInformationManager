<%-- 
    Document   : userList
    Created on : Jul 1, 2018, 7:44:08 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table, tr, td, th{
                padding: 5px;
                border-width: 0px;
            }
            th{
                background: red;
                color: white;
                font-size: 20px;
                font-family: sans-serif;
                padding: 12px;
            }
            header{
                background: red;
                color: white;
                font-size: 40px;
                font-family: sans-serif;
                padding: 20px;
                margin-bottom: 20px;
                width: 673px;
            }
            tr:nth-child(even){
                background-color: rgb(243, 229, 216);
            }
            tr{
               font-weight: bold;
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
        <table>
            <tr>
                <th>Username</th>
                <th>Password</th>
                <th>JMBG</th>
                <th>Phone number</th>
                <th>Action:</th>
            </tr>
        
        <c:forEach var="user" items="${userList}">
          <tr>  
            <td>${user.name}</td>
            <td>${user.password}</td>
            <td>${user.jmbg}</td>
            <td>${user.phoneNumber}</td>
            <td><a href="${pageContext.request.contextPath}/updateUser?id=${user.id}">Change user info</a> |
            <a onclick="if(!(confirm('Delete user')))return false" href="${pageContext.request.contextPath}/deleteUser?id=${user.id}">Delete user</a></td>
          </tr>  
        </c:forEach>
         </table>   
        <br>
        <a href="${pageContext.request.contextPath}/"><button type="button">Back to main page</button></a>     
      
    </body>
</html>
