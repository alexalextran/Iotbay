<%-- 
    Document   : register
    Created on : 12 Apr 2022, 11:09:49 pm
    Author     : Alex Tran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.isd.model.Customer"%>
<%@page import="uts.isd.controller.InsertCustomer"%>
<%@page import="uts.isd.controller.ReadCustomer"%>
<%@page import="uts.isd.controller.FindCustomer"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/css.css">
    </head>
    <body>
      
           
         <%
             if(request.getParameter("Name") != null){
                    String name = request.getParameter("Name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String phone = request.getParameter("phone");
            
            InsertCustomer is = new InsertCustomer();
             is.Insert(is.getConnDB(), name, email, password, phone);
             
             FindCustomer findCustomer = new FindCustomer();
             Customer customer = findCustomer.Find(findCustomer.getConnDB(), name, email, password, phone);
             
           
            
            session.setAttribute("customer", customer);
            
             
             %>
               
        <div class="welcome__gretting">
            
            <h1>Welcome <span class="blue"><%out.println(customer.getName());%></span> you successfully registered in</h1>
        <h1>Your details are</h1>
        </div>
        
        <div class='welcome__details box-shadow'>
           <table class="welcome__table">
     <tr>
     <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Password</th>
     <th>Phone</th>
  </tr>
  <td>
      <%out.println(customer.getId());%>
  </td>
  <td>
      <%out.println(customer.getName());%>
  </td>
  <td>
      <%out.println(customer.getEmail());%>
  </td>
  <td>
      <%out.println(customer.getPassword());%>
  </td>
  <td>
      <%out.println(customer.getPhone());%>
  </td>
        </table>
     
  <a href="Main.jsp" class="button__link"> Proceed to the main page!</a>
         </div>
            
             <% } else{
             ReadCustomer readCustomer = new ReadCustomer();
            String email = request.getParameter("email");
            String password = request.getParameter("password");
     
         
             if(readCustomer.Read(readCustomer.getConnDB(), request.getParameter("email"), request.getParameter("password")) != null){
             Customer customer = readCustomer.Read(readCustomer.getConnDB(), request.getParameter("email"), request.getParameter("password"));
             session.setAttribute("customer", readCustomer.Read(readCustomer.getConnDB(), request.getParameter("email"), request.getParameter("password")));
              
             %>
              <div class="welcome__gretting">
            
            <h1>Welcome <span class="blue"><%out.println(customer.getName());%></span> you successfully logged in</h1>
        <h1>Your details are</h1>
        </div>
        
        <div class='welcome__details box-shadow'>
            <table class="welcome__table">
     <tr>
     <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Password</th>
     <th>Phone</th>
  </tr>
  <td>
      <%out.println(customer.getId());%>
  </td>
  <td>
      <%out.println(customer.getName());%>
  </td>
  <td>
      <%out.println(customer.getEmail());%>
  </td>
  <td>
      <%out.println(customer.getPassword());%>
  </td>
  <td>
      <%out.println(customer.getPhone());%>
  </td>
        </table>
     
  <a href="Main.jsp" class="button__link"> Proceed to the main page!</a>
         </div>
             
             
             <%
             } else{
            %>
        </div>
        
        <div class='welcome__details box-shadow'>
            <h1>The details entered were <span class="blue">incorrect</span> please try again!</h1>
     
  <a href="Login.jsp" class="button__link"> Try again?</a>
         </div>
             <%
             }
             }
        %> 
        
      
       
            
            
    </body>
</html>
