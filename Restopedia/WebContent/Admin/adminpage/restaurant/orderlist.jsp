<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Restaurant Parameter Maintenance</title>

<%@include file="restaurant.jsp"%>
</head>
<body class="nav-md">
    <div class="container body">
    
      <div class="main_container">
        
        <!-- page content -->
        <div class="right_col" role="main">
        <!-- Restaurant Maintainance--><br><br>
        	<div class="container">
	        <div class="panel panel-primary">
	            <div class="panel-heading ">
	                <h3 class="panel-title">Restaurant Parameter Maintenance</h3>
	            </div>
	            <div class="panel-body">
                
                <div class="col-md-12">
                    <div class="panel" style="border-color: " style="background-color: #a9a9a9">
                        <ul class="nav nav-tabs" style="border-bottom-color: blue">
                            <li class="active">
                                <a href="#Liquore" class="nav-links tab-pane fade-in-active" class="active" role="tab" data-toggle="tab"><button type="button" class="btn btn-success">Liquor File</button></a>
                            </li>
                            <li class="nav-item">
                                <a href="#Waiter" class="nav-links" role="tab" data-toggle="tab"><button type="button" class="btn btn-warning">Waiter Maintenance</button></a>
                            </li>
                            <li class="nav-item">
                                <a href="#Permit" class="nav-links" role="tab" data-toggle="tab"><button type="button" class="btn btn-info">Permit File</button></a>
                            </li>
                            <li class="nav-item">
                                <a href="#Credit Card" class="nav-links" role="tab" data-toggle="tab"><button type="button" class="btn btn-primary">Credit Card</button></a>
                            </li>
                           
                            <li class="nav-item">
                                <a href="#Menu" class="nav-links" role="tab" data-toggle="tab"><button type="button" class="btn btn-warning">Menu</button></a>
                            </li>
                            
                        </ul>
                        
                        <div class="tab-content">
                            <!-- Start Liquor File tab-->
                            <div role="tabpanel" class="tab-pane active" id="Liquor">  
                                 <!-- it should be like this                      -->
                              <form>
								  <div class="form-group">
								    <label for="code" class="col-sm-4 control-label">Liquor id:</label>
								    <div class="col-sm-8">
								      <input type="text" class="form-control" id="liquorid" placeholder="Liquor Id" name="Liquor Id">
								    </div>
								  </div>
								  
								   <div class="form-group">
								    <label for="membercode" class="col-sm-4 control-label">Member Code:</label>
								    <div class="col-sm-8">
								      <input type="text" class="form-control" id="membercode" placeholder="Member Code" name="Member Code">
								    </div>
								  </div>
								  
								   <div class="form-group">
								    <label for="code" class="col-sm-4 control-label">Address:</label>
								    <div class="col-sm-8">
								      <input type="text" class="form-control" id="address" placeholder="Address" name="Address">
								    </div>
								  </div>
								  
								   <div class="form-group">
								    <label for="code" class="col-sm-4 control-label">City:</label>
								    <div class="col-sm-8">
								      <input type="text" class="form-control" id="city" placeholder="City" name="City">
								    </div>
								  </div>
								  
								  <div class="form-group">
								    <label for="pincode" class="col-sm-4 control-label">Pincode:</label>
								    <div class="col-sm-8">
								      <input type="text" class="form-control" id="pincode" placeholder="Pin Code" name="Pin Code">
								    </div>
								  </div>
								  
								   <div class="form-group">
								    <label for="profession" class="col-sm-4 control-label">Profession:</label>
								    <div class="col-sm-8">
								      <input type="text" class="form-control" id="profession" placeholder="Profession" name="Profession">
								    </div>
								  </div>
								  
								   <div class="form-group">
								    <label for="Mfromdate" class="col-sm-4 control-label">Spouse Name:</label>
								    <div class="col-sm-3"> 
								      <input type="text" class="form-control" id="spousename" placeholder="Spouse Name" name="Spouse Name">
								    </div>
								      <label for="email" class="col-sm-2 control-label">B'date:</label>
								      <div class="col-sm-3"> 
								      <input type="date" class="form-control" id="bdate" placeholder="bdate" name="B'date">
								  	</div>
								   </div>  
								  
								  <div class="form-group">
								    <label for="Mfromdate" class="col-sm-4 control-label">wedd.date:</label>
								    <div class="col-sm-3"> 
								      <input type="date" class="form-control" id="fromdate" placeholder="fromdate" name="from date">
								     </div>
								      <label for="email" class="col-sm-2 control-label">Email:</label>
								       <div class="col-sm-3"> 
								      <input type="text" class="form-control" id="email" placeholder="email">
								  	   </div>
								   </div> 
								    
								   <div class="form-group">
								    <label for="mobilenumber" class="col-sm-4 control-label">Mobile Number:</label>
								    <div class="col-sm-8">
								      <input type="text" class="form-control" id="mobilenumber" placeholder="Mobile Number" name="Mobile Number">
								    </div>
								  </div>
								  
								   <div class="form-group">
								    <label for="likes" class="col-sm-4 control-label">Likes:</label>
								    <div class="col-sm-8">
								      <input type="text" class="form-control" id="guestid" placeholder="Likes" name="Likes">
								    </div>
								  </div>
								  
								  <div class="form-group">
								    <label for="dislikes" class="col-sm-4 control-label">Dislikes:</label>
								    <div class="col-sm-8">
								      <input type="text" class="form-control" id="dislikes" placeholder="Dislike" name="dislikes">
								    </div>
								  </div>
								       
								  <div class="form-group">
								    <div class="col-sm-offset-4 col-sm-8">
								      <button type="submit" class="btn btn-default">submit</button>
								       <button type="reset" class="btn btn-default">Reset</button>
								    </div>
								  </div>
								  </form>
                            </div>
                            <!-- End of Liquor File tab-->
                            
                            
                            
                            <!-- Start Waiter Maintenance File tab-->
                            
                            <div role="tabpanel" class="tab-pane" id="Waiter">
                                
                                <form>
                                <div class="form-group">
                                    <label for="text" class="col-md-4 control-label">Email-Id</label>
                                    <div class="col-md-8">
                                    <input type="text" class="form-control" id="text" autofocus="none" name="" placeholder="Hospital Email-Id">
                                    </div>
                                </div> <br><br>
                                </form>
                            </div>
                            <!-- End of Waiter Maintenance File tab-->
                            
                            <!-- Starts Permit File tab-->
                            
                            <div role="tabpanel" class="tab-pane" id="Permit">
                               
                                <table class="table table-hover">
                                <tr>
                                    <td>
                                        <h4>Operation Theater <input type="checkbox"></h4>
                                    </td>
                                </tr>
                                </table>
                            </div>
                            <!-- End of Permit file tab-->
                            
                            <!-- Starts Credit Card tab-->
                            
                            <div role="tabpanel" class="tab-pane" id="Credit">
                    
                                <div class="form-group">
                                    <label for="text" class="col-md-4 control-label">Area of Specialization</label>
                                    <div class="col-md-8">
                                    <input type="text" class="form-control" id="text" autofocus="none" name="" placeholder="Doctor's Specialization">
                                    </div>
                                </div> <br><br>
                    
                                <div class="form-group">
                                    <label for="text" class="col-md-4 control-label">Experience</label>
                                    <div class="col-md-8">
                                    <input type="text" class="form-control" id="text" autofocus="none" name="" placeholder="Experiance of Doctor">
                                </div>
                                </div> <br><br>
                                
                            </div>
                            
                            <!--End Credit card maintenance tab-->
                            
                            <!-- Starts Menu tab-->
                            
                            <div role="tabpanel" class="tab-pane" id="Menu">
                    
                                <div class="form-group">
                                    <label for="text" class="col-md-4 control-label">Area of Specialization</label>
                                    <div class="col-md-8">
                                    <input type="text" class="form-control" id="text" autofocus="none" name="" placeholder="Doctor's Specialization">
                                    </div>
                                </div> <br><br>
                    
                                <div class="form-group">
                                    <label for="text" class="col-md-4 control-label">Experience</label>
                                    <div class="col-md-8">
                                    <input type="text" class="form-control" id="text" autofocus="none" name="" placeholder="Experiance of Doctor">
                                </div>
                                </div> <br><br>
                                
                            </div>
                            
                            <!--End Menu tab-->
                        </div>
                    </div>
                </div>
                </div>
       			</div>
       			</div>
                <!-- Restaurant Maintainance Closed-->
        
        </div>
		</div>
		<!-- main_container close -->
		</div>
		<!-- container fluid close -->
		
  </body>

</html>