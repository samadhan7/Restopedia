<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Employee</title>
</head>
<%@include file="update.jsp"%>
</head>
<body class="nav-md">
    <div class="container body">
      <div class="main_container">      

        <!-- page content -->
                <div class="right_col" role="main">
        <!-- customer Master--><br><br>
        
        <div class="container">
            <a href="employeemaster.jsp" class="btn btn-primary"> <span class="glyphicon glyphicon-align-justify"></span>  Employee Master</a>
        </div><br>
        
        	<div class="container">
	        <div class="panel panel-primary">
	            <div class="panel-heading ">
	                <h3 class="panel-title">Update Department</h3>
	            </div>
	            <div class="panel-body">
                
                <div class="col-md-12">
                    <div class="panel" style="border-color: " style="background-color: #a9a9a9">
                       
                        
                        <div class="tab-content">
                            <!-- Start Add customer Tab-->
                            
                             <form class="form-horizontal text-left" action="${pageContext.request.contextPath }/EmployeeController" method="GET">
						               <br> 
						               <input type="hidden" class="form-control" name="id" value="<%=request.getParameter("id")%>" >
                             			<input type="hidden" class="form-control" name="type" value="Update" >
						                
						                 <div class="form-group">
						                    <label for="ename" class="col-sm-3 control-label">Employee Name <i class="text-danger">*</i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="ename" id="ename" value="<%=request.getParameter("ename")%>">
						                    </div>
						                   
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="email" class="col-sm-3 control-label">Employee Email <i class="text-danger">*</i></label>
						                    <div class="col-sm-5">
						                    <input type="email" class="form-control" name="email" id="email"  value="<%=request.getParameter("email")%>">
						                    </div>
						                     
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="contact" class="col-sm-3 control-label">Employee Contact No.<i class="text-danger">*</i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="contact" id="contact" value="<%=request.getParameter("contact")%>" >
						                    </div>
						                  
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="address" class="col-sm-3 control-label">Employee Address</label>
						                    <div class="col-sm-5">
						                    <textarea rows="4" cols="48" name="address" id="address" value="<%=request.getParameter("address")%>"></textarea>
						                    </div>
						                </div>
						                    
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="details" class="col-sm-3 control-label">Employee designation</label>
						                    <div class="col-sm-5">
						                    <select class="form-control" name="designation" id="designation" value="<%=request.getParameter("designation")%>">
						                    <option>--Select--</option>
						                    <option>Captain</option>
						                   	<option>Employee</option>
						                    <option>Manager</option>
						                    <option>Waiter</option>
						                    <option>Guard</option>
						                    </select>
						                    </div>
						                </div>                
						                
						                
						                <div class="col-sm-6" style="float: right">
						                <button type="submit" class="btn btn-primary" name="btnEmployee" value="Update" style="">Update</button>
						<!--                <button type="submit" class="btn btn-success">Save and Add Another</button>-->
						                </div>          
						     </form>
                             
						    </div>
                            
                            <!-- End Update customer tab-->
                            </div>
                            
                            <!-- End Manage customer tab-->
                
               
                </div>
                </div>
                </div>
		</div>
		<!-- main_container close -->
		</div>
		</div>
		<!-- container fluid close -->
		</div>
		
  </body>
</html>