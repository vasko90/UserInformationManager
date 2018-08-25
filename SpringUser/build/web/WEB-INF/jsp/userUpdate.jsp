<%-- 
    Document   : userUpdate
    Created on : Jul 1, 2018, 7:54:47 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
             .error{
                color: red;
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
            body{
                font-family: sans-serif;
            }
            button{
                border-radius: 5px;
                border-color: black;
                font-weight: bold;
                padding: 5px;
            }
            td{
                padding: 3px;
              
            }
             button:active{
                background-color: #A69D9D;
            }
        </style>
    </head>
    <body>
       <header>UIM - User Information Manager</header>
        <h1>User details</h1>
         <form:form action="userRegistration" method="post" modelAttribute="theUser">
           <input hidden type="text" name="id" value="${theUser.id}">
            <table>
                <tr>
                    <td>Name:</td>
                    <td><form:input path="name"/></td>
                    <td><form:errors path="name" cssClass="error"/></td>
                </tr>
                <tr>
                    <td>Password(must contain 10 characters):</td>
                    <td><form:input path="password"/></td>
                    <td><form:errors path="password" cssClass="error"/></td>
                </tr>
                <tr>
                    <td>JMBG(must contain 13 digits):</td>
                    <td><form:input path="jmbg"/></td>
                    <td><form:errors path="jmbg" cssClass="error"/></td>
                </tr>
                <tr>
                    <td> Phone number:</td>
                    <td><form:input path="phoneNumber"/></td>
                    <td><form:errors path="phoneNumber" cssClass="error"/></td>
                </tr>
                
             </table>
             <input  type="submit">
         </form:form>        
        <br>
        <a href="${pageContext.request.contextPath}/"><button type='button'>Back to the main page</button></a> 

    </body>
</html>
