<%-- 
    Document   : Main
    Created on : 15 Apr 2022, 11:34:51 pm
    Author     : Alex Tran
--%>

<%@page import="uts.isd.model.Customer"%>
<%@page import="uts.isd.model.Staff"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/css.css">
              <%
             
              %> 
    </head>
    <%
        if(request.getParameter("user").equals("customer")){
         Customer customer = (Customer)session.getAttribute("user"); 
        %>
        
        
    <body>
        <div class="welcome__gretting"> 
            <h1>Hey <span class="blue"><%out.println(customer.getName());%></span> welcome to IOT BAY!</h1>
        </div>
       
        <div class='main__div'>
            
            <div class="main__account">
              <h2>Account & Details</h2>
            <a href="UpdateCustomer.jsp?user=customer">Update Details</a>
            <a>Access Logs</a>
             <a href="DeleteUser.jsp?user=customer">Delete account</a>
            <a href="Logout.jsp">Log out</a>
           
        </div>
            
            <div class='main__products'>
                <h2>Orders & Products</h2>
                <a href="Products.jsp">View Products </a>
                <a href="Products.jsp">My Orders</a>
                
            </div>
            
        </div>
        
    </body>
    <%
    
    } else{
//staff main menu
 Staff staff = (Staff)session.getAttribute("user"); 
        %>
      
            <body>
        <div class="welcome__gretting"> 
            <h1>Hey <span class="green"><%out.println(staff.getFirstName());%></span> welcome to IOT <span class="green">Staff</span> System</h1>
        </div>
       
        <div class='main__div'>
            
            <div class="main__account" style="border-right-color:  rgb(20,206,94);">
              <h2>Account & Details</h2>
              <a class="greenBG" href="UpdateCustomer.jsp?user=staff">Update Details</a>
            <a class="greenBG">Access Logs</a>
             <a class="greenBG" href="DeleteUser.jsp?user=staff">Delete account</a>
            <a class="greenBG" href="Logout.jsp">Log out</a>
           
        </div>
            
            <div class='main__products'>
                <h2>Orders & Products</h2>
                <a class="greenBG" href="Products.jsp">View Products </a>
                <a class="greenBG" href="AddProducts.jsp">Add Products</a>
               
                
            </div>
            
        </div>
        
    </body>
        <%
            } 
            %>
</html>
