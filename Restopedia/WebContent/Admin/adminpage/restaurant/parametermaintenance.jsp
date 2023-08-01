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
                                <a href="#Permit" class="nav-links" role="tab" data-toggle="tab"><button type="button" class="btn btn-info">Permit File</button></a>
                            </li>
                         
                        </ul>
                        
                        <div class="tab-content">
                            <!-- Start Liquor File tab-->
                            <div role="tabpanel" class="tab-pane active" id="Liquor">  
                                 <form class="form-horizontal text-left" action="#" method="post">
						               <br> 
						                <div class="form-group">
						                    <label for="liquorid" class="col-sm-3 control-label">Liquor Id<i class="text-danger">*</i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="liquorid" id="liquorid" placeholder="Liquor Id" required="">
						                    </div>
						                   
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="liquorcategory" class="col-sm-3 control-label">Liquor Category </label>
						                    <div class="col-sm-5">
						                    <select class="form-control" name="liquorcategory" id="liquorcategory"  placeholder="Liquor Category" required="">
						                    <option>--Select--</option>
						                    <option>whiskey</option>
						                    <option>Rum</option>
						                    <option>Vodka</option>
						                    <option>Brandy</option>
						                    <option>Gin</option>
						                    <option>Beer</option>
						                   </select>
						                    </div>
						                    </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="quantity" class="col-sm-3 control-label">Quantity</label>
						                    <div class="col-sm-5">
						                    <select class="form-control" name="quantity" id="quantity" placeholder="Quantity" required="">
						                    <option>--Select--</option>
						                    <option> Ll</option>
						                     <option> ML</option>
						                     </select>
						                    </div>
						                  
						                </div>
						                
						            <div class="clearfix"></div>
						              
						              <div class="form-group">
						                    <label for="liquorname" class="col-sm-3 control-label">Liquor Name</label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="liquorname" id="liquorname" placeholder="Liquor Name" required="">
						                    </div>
						                   
						                </div>
						                 <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="unit" class="col-sm-3 control-label">Unit</label>
						                    <div class="col-sm-5">
						                    <select class="form-control" name="unit" id="unit" placeholder="Unit" required="">
						                    <option>--Select--</option>
						                    <option>ML</option>
						                     <option>LL</option>
						                     </select>
						                    </div>
						                  
						                </div>
						                <div class="clearfix"></div>
						              
						              <div class="form-group">
						                    <label for="price" class="col-sm-3 control-label">Price</label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="price" id="price" placeholder="Price" required="">
						                    </div>
						                   
						                </div>
						                
						               <div class="col-sm-6" style="float: right">
						                <button type="submit" class="btn btn-primary" style="">Save</button>
						<!--                <button type="submit" class="btn btn-success">Save and Add Another</button>-->
						                </div>
						                                       
						        </form>
                            </div>
                            <!-- End of Liquor File tab-->
                            
                              <!-- Starts Permit File tab-->
                            
                           <div role="tabpanel" class="tab-pane " id="Permit">
                               
                                  <form class="form-horizontal text-left" action="#" method="post">
						               <br> 
						                <div class="form-group">
						                    <label for="permitno" class="col-sm-3 control-label">Permit No.<i class="text-danger">*</i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="permitno" id="permitno" placeholder="Permit No" required="">
						                    </div>
						                   
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="permitname" class="col-sm-3 control-label">Permit Name </label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="permitname" id="permitname"  placeholder="Permit Name" required="">
						                    </div>
						                     
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="issuedate" class="col-sm-3 control-label">Issue Date </label>
						                    <div class="col-sm-5">
						                    <input type="date" class="form-control" name="issuedate" id="issuedate"  placeholder="Issue Date" required="">
						                    </div>
						                     
						                </div>
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for=validdate" class="col-sm-3 control-label">valid Date</label>
						                    <div class="col-sm-5">
						                    <input type="date" class="form-control" name="validdate" id="validdate"  placeholder="Valid Date" required="">
						                    </div>
						                     
						                </div>
						                </form>
						                
                            </div>
                            <!-- End of Permit file tab-->
                            
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