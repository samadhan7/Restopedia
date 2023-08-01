<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Department</title>
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
            <a href="managedepartment.jsp" class="btn btn-primary"> <span class="glyphicon glyphicon-align-justify"></span> Manage Department</a>
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
                            
                             <form class="form-horizontal text-left" action="${pageContext.request.contextPath }/DepartmentController" method="GET">
						               <br> 
						               <input type="hidden" class="form-control" name="id" value="<%=request.getParameter("id")%>" >
                             			<input type="hidden" class="form-control" name="type" value="Update" >
						                <div class="form-group">
						                    <label for="departmentnumber" class="col-sm-3 control-label">Department number <i class="text-danger">*</i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="departmentnumber" id="depatmentnumber" value="<%=request.getParameter("departmentnumber")%>">
						                    </div>
						                   
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="Departmentname" class="col-sm-3 control-label">Department Name </label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="departmentname" id="departmentname"  value="<%=request.getParameter("departmentname")%>">
						                    </div>
						                     
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="contact" class="col-sm-3 control-label">Number Of Employee</label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="noofemployee" id="noofemployee" value="<%=request.getParameter("noofemployee")%>" >
						                    </div>
						                  
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="description" class="col-sm-3 control-label"> Description </label>
						                    <div class="col-sm-5">
						                    <textarea rows="4" cols="48" name="description" id="description" value="<%=request.getParameter("description")%>"></textarea>
						                    </div>
						                </div>
						                    
						                
						            
						                <div class="col-sm-6" style="float: right">
						                	<button type="submit" class="btn btn-primary" name="btnDepartment" value="Update" style="">Update</button>
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