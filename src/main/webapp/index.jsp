<%-- 
    Document   : index
    Created on : Feb 8, 2021, 9:49:58 PM
    Author     : Emil
--%>
<!-- page info -->
<%@ page language="java" contentType="text/html; charset = ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<%-- importing java.util in order to fetch current date and time --%>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%-- declaring object dtf to work with date and its format --%>
<% DateTimeFormatter dtf = DateTimeFormatter.ofPattern("HH:mm:ss");%>
<% LocalDateTime now = LocalDateTime.now();%>
  <script>
            function update_Time(){
                window.location.reload();
    }
        </script>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Time of Day</title>
    </head>
    <body>
        <h1>Hello!</h1>
        <h1> It's <%= dtf.format(now)%></h1>
        
        
        <% int hour = now.getHour(); %>
       
        
         <% if(hour >= 0 && hour < 12 ) {%> 
        <h1>Good Morning!</h1>
        
        <% } else if (hour >=12 && hour < 18) { %>
        <h1>Good Afternoon!</h1>
        
        
        <% }else if (hour >=18 && hour < 21) { %>
        <h1>Good Evening!</h1>
        
        
        <% } else if (hour >=21 && hour < 6) { %>
        <h1>Good Night!</h1>
        <%}%>
        
        
        <input type="button" value="check time" onclick="update_Time()">
        <!-- 
          JS function to refresh the page since JSP is executed on server once
          not as JS on a clinet side
        -->
        
    </body>
</html>
