<%-- 
    Document   : StaffLogin
    Created on : 16 Apr 2022, 12:26:26 am
    Author     : Alex Tran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
         <link rel="stylesheet" href="css/css.css">
    </head>
     <body>
        <div class='enterform box-shadow'>
            
          <h1>Login</h1>
          <form class="enterform__input" action="Welcome.jsp" method="POST">
            <input type="text" name="email" value="" placeholder="Email"/>
            <input type="text" name="password" value="" placeholder="Password"/>
            <button class='button'>Login </button>
        </form>
          
          <a href="Register.jsp">Don't have an account? click here!</a>
          
        </div>
           <div class="container">
        <div class="row">
            <h1>Staff Management System</h1>
            <a href="addStaff.jsp" class="btn btn-primary">Add Staff Member</a>
            <a href="viewStaff.jsp" class="btn btn-primary">View Staff Members</a>
        </div>
     </div>
    </body>
   
  
</html>
