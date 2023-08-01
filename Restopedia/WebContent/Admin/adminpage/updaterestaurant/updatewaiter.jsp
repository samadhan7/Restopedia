<%@page import="javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Waiter Assignment</title>
<%@include file="update.jsp"%>
</head>
<body class="nav-md">
    <div class="container body">
      <div class="main_container">      

        <!-- page content -->
                <div class="right_col" role="main">
        <!-- userfile Master--><br><br>
        
        <div class="container">
            <a href="managecustomer.jsp" class="btn btn-primary"> <span class="glyphicon glyphicon-align-justify"></span> Manage Waiter Assignment</a>
        </div><br>
        
        	<div class="container">
	        <div class="panel panel-primary">
	            <div class="panel-heading ">
	                <h3 class="panel-title">Update Waiter Assignment</h3>
	            </div>
	            <div class="panel-body">
                
                <div class="col-md-12">
                    <div class="panel" style="border-color: " style="background-color: #a9a9a9">
                       
                        
                        <div class="tab-content">
                            <!-- Start Add customer Tab-->
                            
                                                     
                             <form class="form-horizontal text-left" action="${pageContext.request.contextPath }/Restaurantwaitercontroller" method="GET">
                             	<input type="hidden" class="form-control" name="id" value="<%=request.getParameter("id")%>" >
                             	<input type="hidden" class="form-control" name="type" value="Update" >
                             	
						               <br> 
						                <div class="form-group">
						                    <label for="waiterid" class="col-sm-3 control-label">Waiter ID <i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="waiterid" id="waiterid" value="<%=request.getParameter("waiterid")%>">
						                    </div>
						                   
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="wname" class="col-sm-3 control-label">Waiter Name <i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="wname" id="wname"  value="<%=request.getParameter("wname")%>">
						                   </div> 
						                   
						                </div>
						                
						                 <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="tabletype" class="col-sm-3 control-label">Table Type <i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="tabletype" id="tabletype"  value="<%=request.getParameter("tabletype")%>">
						                   </div> 
						                   
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="tableno" class="col-sm-3 control-label">Table Number <i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <select class="form-control" name="tabletype" id="tabletype" placeholder="Table Type" required="">
						                    <option><%=request.getParameter("tableno")%></option>
						                    <option> Garden</option>
						                     <option> Room(A/C)</option>
						                      <option> Room(Non-A/C)</option>
						                     </select>
						                   </div> 
						                   
						                </div>
						                   
						                 
						                 
						                
						               <div class="col-sm-6" style="float: right">
						                <input type="submit"  name="btnwaiter" class="btn btn-success" value="Update" style="" />
						<!--                <button type="submit" class="btn btn-success">Save and Add Another</button>-->
						                </div>
								    </form>
						    </div>
                            
                            <!-- End Update userfile tab-->
                            </div>
                            
                            <!-- End Manage userfile tab-->
                
               
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