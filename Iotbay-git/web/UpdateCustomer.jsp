<%-- 
    Document   : Update
    Created on : 15 Apr 2022, 11:36:43 pm
    Author     : Alex Tran
--%>

<%@page import="uts.isd.model.Customer"%>
<%@page import="uts.isd.controller.UpdateCustomer"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
             Customer customer = (Customer)session.getAttribute("customer"); 
            if(request.getParameter("email") != null || request.getParameter("password") != null || request.getParameter("name") != null || request.getParameter("name") != null){
           
            UpdateCustomer updateCustomer = new UpdateCustomer();
            updateCustomer.Update(updateCustomer.getConnDB(), request.getParameter("name"), request.getParameter("email"), request.getParameter("password"), request.getParameter("phone"), customer.getId());
       
            
            customer.setName(request.getParameter("name"));
            customer.setEmail(request.getParameter("email"));
            customer.setPassword(request.getParameter("password"));
            customer.setPhone(request.getParameter("phone"));
            %>
            <h2>Your details have been successfully changed</h2>
          <form method="POST" action=""Update.jsp>
            <input type="text" name="name" value="${customer.name}" />
            <input type="text" name="email" value="${customer.email}" />
            <input type="text" name="password" value="${customer.password}"/>
            <input type="text" name="phone" value="${customer.phone}"/>
            <button>Submit</button>
        </form>
            
            <a href="Main.jsp">Back to welcome page</a>
           <% 
               } else{ 
           %>
              <form method="POST" action=""Update.jsp>
            <input type="text" name="name" value="${customer.name}" />
            <input type="text" name="email" value="${customer.email}" />
            <input type="text" name="password" value="${customer.password}"/>
            <input type="text" name="phone" value="${customer.phone}"/>
            <button>Submit</button>
        </form>
            
            <a href="Main.jsp">Back to welcome page</a>
            <% 
            }
        %>
      
    </body>
</html>
