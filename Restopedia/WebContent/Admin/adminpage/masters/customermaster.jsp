<%@page import="org.hibernate.*" %>
<%@page import="model.com.master.Customer" %>
<%@page import="java.util.Iterator" %>
<%@page import="org.hibernate.cfg.*" %>
<%@page import="javax.servlet.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Master</title>
<%@include file="masters.jsp"%>
</head>
<body class="nav-md">
    <div class="container body">
      <div class="main_container">      

        <!-- page content -->
                <div class="right_col" role="main">
        <!-- customer Master--><br><br>
        	<div class="container">
	        <div class="panel panel-primary">
	            <div class="panel-heading ">
	                <h3 class="panel-title">Customer Master</h3>
	            </div>
	            <div class="panel-body">
                
                <div class="col-md-12">
                    <div class="panel" style="border-color: " style="background-color: #a9a9a9">
                        <ul class="nav nav-tabs" style="border-bottom-color: blue">
                            <li class="active">
                                <a href="#Add" class="nav-links tab-pane fade-in-active" class="active" role="tab" data-toggle="tab"><button type="button" class="btn btn-success">Add New Customer</button></a>
                            </li>
                            <li class="nav-item">
                                <a href="#Manage" class="nav-links" role="tab" data-toggle="tab"><button type="button" class="btn btn-warning">Manage Customer</button></a>
                            </li>
                            
                        </ul>
                        
                        <div class="tab-content">
                            <!-- Start Add customer Tab-->
                            <div role="tabpanel" class="tab-pane <%if(Integer.parseInt(request.getParameter("id"))==1){ %>active<%}%>" id="Add">  
                                                     
                             <form class="form-horizontal text-left" action="${pageContext.request.contextPath }/CustomerController" method="GET">
						               <br> 
						               <input type="hidden" class="form-control" name="type" value="Save" >
						                <div class="form-group">
						                    <label for="Customername" class="col-sm-3 control-label">Customer Name <i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="customername" id="Customername" placeholder="Customer Name" required="">
						                    </div>
						                   
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="customercontactnumber" class="col-sm-3 control-label">Customer contact Number <i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="contactno" id="customercontactnumber"  placeholder="Customer Contact Number" required="">
						                   </div> 
						                   
						                </div>
						                   
						                 
						                 <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="bdate" class="col-sm-3 control-label">B'Date<i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="date" class="form-control" name="bdate" id="bdate"  placeholder="B'date" required="">
						                    </div>
						                     
						                </div>
						                
						                
						                 <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="customeraddress" class="col-sm-3 control-label">Customer Address<i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="customeraddress" id="customeraddress"  placeholder="Customer Address" required="">
						                    </div>
						                     
						                </div>
						                 <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="customeremail" class="col-sm-3 control-label">Customer Email <i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="email" class="form-control" name="customeremail" id="customeremail"  placeholder="Customer Email" required="">
						                    </div>
						                     
						                </div>
						                 <div class="clearfix"></div>
						                 
						                
						                <div class="form-group">
						                    <label for="assignedtableno" class="col-sm-3 control-label">Assigned Table No.<i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="assignedtableno" id="asssignedtableno"  placeholder="Assigned Table No." required="">
						                    </div>
						                     
						                </div>
						              				                
						               <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="assignedwaiterno" class="col-sm-3 control-label">Assigned Waiter No. <i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="assignedwaiterno" id="assignedwaiterno"  placeholder="Assigned Waiter No." required="">
						                    </div>
						                     
						                </div>
						                
						               <div class="col-sm-6" style="float: right">
						                <button type="submit" class="btn btn-primary" name="btnCustomer" value="Save" style="">Save</button>
						<!--                <button type="submit" class="btn btn-success">Save and Add Another</button>-->
						                </div>
								  
						                                       
						             </form>
						           
							
                            </div>
                            
                            <!-- End Add customer tab-->
                            
                            
                            
                            <!-- Start Manage customer tab-->
                            
                            <div role="tabpanel" class="tab-pane <%if(Integer.parseInt(request.getParameter("id"))==2){ %>active<%}%>" id="Manage">
                                
                                 <br><br>
                                <div class="row">
                                
                                <div class="col-md-4">
				                    <form class="form-horizontal">
				                    <div class="form-group">
				                        <label class="col-sm-2 control-label">Search</label>
				                    <div class="col-sm-9">
				                        <input type="search" name="search" id="search" class="form-control">
				                    </div>
				                    </div>
				                    </form>
				                </div>
                                </div>
                                
                                <div class="row">
				                <div class="table-responsive" style="margin-top: 10px">
				                    <table class="table table-bordered table-striped table-hover">
				                        <thead>
				                            <tr>
				                                <th class="text-center">SL.</th>
				                                <th class="text-center">Customer Name</th>
				                                <th class="text-center">Customer Contact Number</th>
				                                <th class="text-center">B'date</th>
				                                <th class="text-center">Customer Address</th>
				                                <th class="text-center">Customer Email</th>
				                                 <th class="text-center">Assigned Table no.</th>
				                                 <th class="text-center">Assigned Waiter No.</th>
				                                <th class="text-center">Action</th>
				                            </tr>
				                        </thead>
				                         <tbody>
				                            <%
				                         int Id;
				                         String customername;
				                         String contactno;
				                         String bdate;
				                         String customeraddress;
				                         String customeremail;
				                         String assignedtableno;
				                         String assignedwaiterno;
				                        %>
				                        <%
                                try{
								
								Session sf=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
								
								Query query = sf.createQuery("FROM Customer");
								Iterator<Customer> it=query.iterate();
								while(it.hasNext())
								{
									Customer c=(Customer)it.next();
								    Id= c.getId();
								    customername= c.getCustomername();
								    contactno= c.getContactno();
								    bdate= c.getBdate();
								    customeraddress= c.getCustomeraddress();
								    customeremail= c.getCustomeremail();
								    assignedtableno= c.getAssignedtableno();
								    assignedwaiterno= c.getAssignedwaiterno();
								
								%>
				                            <tr>
				                                <td><%=Id %></td>
				                                <td><%=customername %></td>
				                                <td><%=contactno %></td>
				                                <td><%=bdate %></td>
				                                <td><%=customeraddress %></td>
				                                <td><%=customeremail %></td>
				                                <td><%=assignedtableno %></td>
				                                <td><%=assignedwaiterno %></td>
				                                <td>
				                                    <center>
				                                    <form action="" accept-charset="utf-8">
				                                         <a href="./../updatepage/updatecustomer.jsp?id=<%=Id%>&customername=<%=customername%>&contactno=<%=contactno%>&bdate=<%=bdate%>&customeraddress=<%=customeraddress%>&customeremail=<%=customeremail%>&assignedtableno=<%=assignedtableno%>&assignedwaiterno=<%=assignedwaiterno%>" class="btn btn-info btn-sm" data-toggle="tooltip" sdata-placement="left" title data-original-title="Update">
				                                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
				                                        </a>
				                                        <a href="${pageContext.request.contextPath }/CustomerController?a=<%=Id%>&type=<%="Delete" %>" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="left" title data-original-title="Delete" name="btnCustomer" value="Delete">
				                                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
				                                        </a>
				                                        
				                                        
														      
				                                    </form>
				                                    </center>
				                                </td>
				                            </tr>
				                            <%
								
                              		  }
								 sf.close();
                                }    
				                        catch(Exception se)
				                        {
				                        	
				                        System.out.println("Error");	
				                        }
				                       
				                            %>
				                            
				                                  </tbody>
				                                  </table>
				                                   <div class="col-sm-2 " style="float: right;">
				                <button type="submit" class="btn btn-primary" > Previous </button>
				                <button type="submit" class="btn btn-success" > Next </button>
				                </div>
				               
				                                  </div>
				                                  </div>
				                                  
				                              </div>      
                                
                            </div>
                            <!-- End Manage customer tab-->
                     
       			
                <!-- Supplier Master Closed-->
                </div>
                </div>
                </div>
                </div>
		</div>
		<!-- main_container close -->
		</div>
		</div>
		<!-- container fluid close -->
		</div>
		</div>
  </body>
</html>