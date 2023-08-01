<%@page import="javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Restaurant</title>
<%@include file="update.jsp"%>
</head>
<body class="nav-md">
    <div class="container body">
      <div class="main_container">      

        <!-- page content -->
                <div class="right_col" role="main">
        <!-- customer Master--><br><br>
        
        <div class="container">
            <a href="managecustomer.jsp" class="btn btn-primary"> <span class="glyphicon glyphicon-align-justify"></span> Manage Restaurant</a>
        </div><br>
        
        	<div class="container">
	        <div class="panel panel-primary">
	            <div class="panel-heading ">
	                <h3 class="panel-title">Update Restaurant</h3>
	            </div>
	            <div class="panel-body">
                
                <div class="col-md-12">
                    <div class="panel" style="border-color: " style="background-color: #a9a9a9">
                       
                        
                        <div class="tab-content">
                            <!-- Start Add customer Tab-->
                            
                                                     
                             <form class="form-horizontal text-left" action="${pageContext.request.contextPath }/RestaurantController" method="GET">
                             	<input type="hidden" class="form-control" name="id" value="<%=request.getParameter("id")%>" >
                             	<input type="hidden" class="form-control" name="type" value="Update" >
                             	
						               <br> 
						                <div class="form-group">
						                    <label for="restaurantname" class="col-sm-3 control-label">Restaurant Name </label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="restaurantname" id="restaurantname" value="<%=request.getParameter("restaurantname")%>">
						                    </div>
						                   
						                </div>
						                 <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="restaurantaddress" class="col-sm-3 control-label">Restaurant Address</label>
						                    <div class="col-sm-5">
						                    <textarea rows="2" cols="48" class="form-control" name="restaurantaddress" id="restaurantaddress" value="<%=request.getParameter("restaurantaddress")%>"></textarea>
						                    </div>
						                </div>
						                 <div class="clearfix"></div>
						                 
						                  <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="resturantturnover" class="col-sm-3 control-label">Restaurant Turnover</label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="resturantturnover" id="resturantturnover"  value="<%=request.getParameter("resturantturnover")%>">
						                    </div>
						                     
						                </div>
						                 
						          			                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="ownername" class="col-sm-3 control-label">Owner Name</label>
						                    <div class="col-sm-5">
						                    <input type="ownername" class="form-control" name="ownername" id="ownername"  value="<%=request.getParameter("ownername")%>">
						                    </div>
						                     
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="ownercontacnot" class="col-sm-3 control-label">Owner Contact No.</label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="ownercontactno" id="ownercontactno" value="<%=request.getParameter("ownercontactno")%>" >
						                    </div>
						                  
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="ownermailid" class="col-sm-3 control-label">Owner Mail id</label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="ownermailid" id="ownermailid" value="<%=request.getParameter("ownermailid")%>" >
						                    </div>
						                  
						                </div>
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="owneraddress" class="col-sm-3 control-label">Owner Address</label>
						                    <div class="col-sm-5">
						                    <textarea rows="2" cols="48" class="form-control" name="owneraddress" id="owneraddress" value="<%=request.getParameter("owneraddress")%>"></textarea>
						                    </div>
						                </div>
						                    
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="ownerdetails" class="col-sm-3 control-label">Owner Details</label>
						                    <div class="col-sm-5">
						                        <textarea rows="2" cols="48" class="form-control" name="ownerdetails" id="ownerdetails" value="<%=request.getParameter("details")%>"></textarea>
						                    </div>
						                </div>              
						                		                
						                
						                <div class="col-sm-6" style="float: right">
						                <button type="submit" class="btn btn-primary" name="btnRestaurant" value="Update" style="">Update</button>
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