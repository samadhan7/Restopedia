<%@page import="org.hibernate.*" %>
<%@page import="model.com.restaurent.Restaurantchainfile" %>
<%@page import="model.com.restaurent.Restaurantuserfile" %>
<%@page import="model.com.restaurent.Restaurantwaiter" %>
<%@page import="model.com.restaurent.Restaurantcguest" %>
<%@page import="model.com.restaurent.Restaurantguesthistory" %>
<%@page import="java.util.Iterator" %>
<%@page import="org.hibernate.cfg.*" %>
<%@page import="javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Restaurant Maintenance</title>

<%@include file="restaurant.jsp"%>
</head>
<body class="nav-md">
    <div class="container body">
      <div class="main_container">
        
        <!-- page content -->
         <div class="right_col" role="main">
        <!-- Restaurant Maintenance--><br><br>
        	<div class="container">
	        <div class="panel panel-primary">
	            <div class="panel-heading ">
	                <h3 class="panel-title">Restaurant Maintenance</h3>
	            </div>
	            <div class="panel-body">
                
                <div class="col-md-12">
                    <div class="panel" style="border-color: " style="background-color: #a9a9a9">
                    
                        <ul class="nav nav-tabs" style="border-bottom-color: blue">
                        <li class="active">
                           <!--  <li class="<%if(Integer.parseInt(request.getParameter("id"))==1){ %>active<%}%> ">-->
                                <a href="#Chain" class="nav-links tab-pane fade-in-active" class="active" role="tab" data-toggle="tab"><button type="button" class="btn btn-success">Chain File</button></a>
                            </li>
                            
                            <li class="nav-item   ">
                                <a href="#User" class="nav-links" role="tab" data-toggle="tab"><button type="button" class="btn btn-warning">User File</button></a>
                            </li>
                            <li class="nav-item  ">
                                <a href="#Waiter" class="nav-links" role="tab" data-toggle="tab"><button type="button" class="btn btn-info">Waiter Assignment</button></a>
                            </li>
                            <li class="nav-item  ">
                                <a href="#Complementory" class="nav-links" role="tab" data-toggle="tab"><button type="button" class="btn btn-primary">Complementary Guest</button></a>
                            </li>
                            <li class="nav-item  ">
                                <a href="#Guest" class="nav-links" role="tab" data-toggle="tab"><button type="button" class="btn btn-danger">Guest History File</button></a>
                            </li>
                           
                            
                        </ul>
                        
                        <div class="tab-content">
                            <!-- Start Chain File tab-->
                            
                            <div role="tabpanel" class="tab-pane active" id="Chain">  
                             
                                <form class="form-horizontal text-left" action="${pageContext.request.contextPath }/Restaurantchainfilecontroller" method="get">
						               <br> 
						                <div class="form-group">
						                    <label for="restaurantname" class="col-sm-3 control-label">Restaurant Name</label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="name" id="name" placeholder="Restaurant Name" required="">
						                    </div>
						                   
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="date" class="col-sm-3 control-label">Date</label>
						                    <div class="col-sm-5">
						                    <input type="date" class="form-control" name="date" id="date"  placeholder="Date" required="">
						                    </div>
						                     
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="Address" class="col-sm-3 control-label">Address</label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="address" id="address"  placeholder="Address" required="">
						                    </div>
						                     
						                </div>
						                 <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="city" class="col-sm-3 control-label">City</label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="city" id="city"  placeholder="city" required="">
						                    </div>
						                     
						                </div>
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="tabletype" class="col-sm-3 control-label">Sales Tax</label>
						                    <div class="col-sm-5">
						                    <select class="form-control" name=salestax" id="salestax" placeholder="Sales Tax" required="">
						                    <option>--Select--</option>
						                    <option> Yes</option>
						                     <option> No</option>
						                     
						                     </select>
						                    </div>
						                  
						                </div>
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="expenditurtax" class="col-sm-3 control-label">Expenditure Tax</label>
						                    <div class="col-sm-5">
						                    <select class="form-control" name="expendituretax" id="expendituretax" placeholder="Expenditure Tax" required="">
						                    <option>--Select--</option>
						                    <option> Yes</option>
						                     <option> No</option>
						                     
						                     </select>
						                    </div>
						                  
						                </div>
						                
						                 <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="servicecharge" class="col-sm-3 control-label">Service Charge</label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="servicecharge" id="servicecharge"  placeholder="Service Charge" required="">
						                    </div>
						                     
						                </div>
						                
						                 <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="backup" class="col-sm-3 control-label">Backup</label>
						                    <div class="col-sm-5">
						                    <select class="form-control" name="backup" id="backup" placeholder="Backup" required="">
						                    <option>--Select--</option>
						                    <option> Yes</option>
						                     <option> No</option>
						                     
						                     </select>
						                    </div>
						                  
						                </div>
						               
						                
						               <div class="col-sm-6" style="float: right">
						                <button type="submit" name="btnchainfile" value="Save" class="btn btn-primary" style="">Save</button>
						<!--                <button type="submit" class="btn btn-success">Save and Add Another</button>-->
						                </div>
						                                       
						             </form>
						             
						             
						             <!-- Manage Chain File  -->
						             
						             <div class="row">
				                <div class="table-responsive" style="margin-top: 10px">
				                    <table class="table table-bordered table-striped table-hover">
				                        <thead>
				                            <tr>
				                                <th class="text-center">SL.</th>
				                                <th class="text-center">Restaurant Name</th>
				                                <th class="text-center">Date</th>
				                                <th class="text-center">Address</th>
				                                <th class="text-center">City</th>
				                                <th class="text-center">Sales Tax</th>
				                                <th class="text-center">Expenditure Tax</th>
				                                <th class="text-center">Service Charge</th>
				                                <th class="text-center">Backup</th>
				                                <th class="text-center">Edit Data</th>
				                            </tr>
				                        </thead>
				                         <tbody>
      							<%
      							int id;
      							String name;
      							String date;
      							String address;
      							String city;
      							String salestax;
      							String expendituretax;
      							String servicecharge;
      							String backup;
      							    							
      							%>
                           <%
                           try
                           {
                        	   Session sf=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
                        	   Query query = sf.createQuery("FROM Restaurantchainfile");
								Iterator<Restaurantchainfile> it=query.iterate();
								while(it.hasNext())
								{
									Restaurantchainfile e=(Restaurantchainfile)it.next();
									id=e.getId();
									name=e.getRestaurantname();
									date=e.getDate();
									address=e.getAddress();
									city=e.getCity();
									salestax=e.getSalestax();
									 expendituretax=e.getExpendituretax();
									 servicecharge=e.getServicecharge();
									 backup=e.getBackup();
									 %>
									 <tr>
									 <td><%=id %></td>
									 <td><%=name %></td>
									 <td><%=date %></td>
									 <td><%=address %></td>
									 <td><%=city %></td>
									 <td><%=salestax %></td>
									 <td><%=expendituretax %></td>
									 <td><%=servicecharge %></td>
									 <td><%=backup %></td>
									 <td>
									 
									 <center>
				                                    <form action=" " accept-charset="utf-8">
				                                        
				                                         <a href="./../updaterestaurant/updatechainfile.jsp?id=<%=id%>&name=<%=name%>&date=<%=date%>&address=<%=address%>&city=<%=city%>&salestax=<%=salestax%>&expendituretax=<%=expendituretax%>&servicecharge=<%=servicecharge%>&backup=<%=backup%>" name="btnchainfile" value="Update" class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title data-original-title="Update">
				                                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
				                                        </a>
				                                        
				                                        <a href="${pageContext.request.contextPath }/Restaurantchainfilecontroller?a=<%=id%>&btnchainfile=<%="Delete" %>"  class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="left"  title data-original-title="Delete" name="btnchainfile" value="Delete">
				                                        
				                                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
				                                        </a>
				                                    </form>
				                                    </center>
				                                </td>
				                            </tr>
				                              <%  }
								 sf.close();
                           }    
			                        catch(Exception se)
			                        {
			                        	
			                        System.out.println("Error"+se.getMessage());	
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
                       
                       
                     
                       <!-- End Manage chain file tab-->    
                     
						             
                            </div>
                            <!-- End Chain File tab-->
                            <!-- manage chain file -->
                            
                                   
                          
                            <!-- Start User File tab-->
                            
                            <div role="tabpanel" class="tab-pane" id="User">
                                
                                 <form class="form-horizontal text-left" action="${pageContext.request.contextPath }/Restaurantuserfilecontroller" method="get">
						               <br> 
						                <div class="form-group">
						                    <label for="uname" class="col-sm-3 control-label">User Name</label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="uname" id="uname" placeholder="User Name" required="">
						                    </div>
						                   
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="pass" class="col-sm-3 control-label">Password</label>
						                    <div class="col-sm-5">
						                    <input type="password" class="form-control" name="pass" id="pass"  placeholder="Password" required="">
						                    </div>
						                     
						                </div>
						                 <div class="col-sm-6" style="float: right">
						                <button type="submit" name="btnuserfile" value="Save" class="btn btn-primary" style="">Save</button>
						<!--                <button type="submit" class="btn btn-success">Save and Add Another</button>-->
						                </div>
						                                       
						           </form>
						           
						           <!-- manage waiter file -->
                            
                             <div class="row">
				                <div class="table-responsive" style="margin-top: 10px">
				                    <table class="table table-bordered table-striped table-hover">
				                        <thead>
				                            <tr>
				                                <th class="text-center">SL</th>
				                                <th class="text-center">User Name</th>
				                                <th class="text-center">Password</th>
				                                <th class="text-center">Edit Data</th>
				                                
				                            </tr>
				                        </thead>
				                         <tbody>
      							<%
      							int uid;
      							String uname;
      							String pass;
      							
      							     							    							
      							%>
                           <%
                           try
                           {
                        	   Session sf2=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
                        	   Query query2 = sf2.createQuery("FROM Restaurantuserfile");
								Iterator<Restaurantuserfile> it=query2.iterate();
								while(it.hasNext())
								{
									Restaurantuserfile e=(Restaurantuserfile)it.next();
									uid=e.getId();
									uname=e.getUsername();
									pass=e.getPassword();
									 %>
									 <tr>
									 <td><%=uid %></td>
									 <td><%=uname %></td>
									 <td><%=pass %></td>
									 
									 <td>
									 
									 <center>
				                                    <form action=" " accept-charset="utf-8">
				                                        
				                                       <a href="./../updaterestaurant/updateuserfile.jsp?id=<%=uid%>&uname=<%=uname%>&pass=<%=pass%>" name="btnuserfile" value="Update" class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title data-original-title="Update">
				                                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
				                                        </a>
				                                        
				                                        <a href="${pageContext.request.contextPath }/Restaurantuserfilecontroller?a=<%=uid%>&btnuserfile=<%="Delete" %>"  class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="left"  title data-original-title="Delete" name="btnuserfile" value="Delete">
				                                        
				                                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
				                                        </a>
				                                    </form>
				                                    </center>
				                                </td>
				                            </tr>
				                              <%  }
								 sf2.close();
                           }    
			                        catch(Exception se)
			                        {
			                        	
			                        System.out.println("Error"+se.getMessage());	
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
                       
                       
                     
                       <!-- End Manage waiter tab-->  
						           
                            </div>
                            <!-- End User File tab-->
                            
                              
                            
                            
                            
                            
                            
                            <!-- Starts Waiter tab-->
                            <div role="tabpanel" class="tab-pane" id="Waiter">
                               
                                <form class="form-horizontal text-left" action="${pageContext.request.contextPath }/Restaurantwaitercontroller" method="get">
						               <br> 
						               <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="waiterid" class="col-sm-3 control-label">Waiter ID <i class="text-danger">*</i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="waiterid" id="waiterid"  placeholder="Waiter ID" required="">
						                    </div>
						                     
						                </div>
						                <div class="form-group">
						                    <label for="wname" class="col-sm-3 control-label">Waiter Name</label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="wname" id="wname" placeholder="Waiter Name" required="">
						                    </div>
						                   
						                </div>			                
						         
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="tabletype" class="col-sm-3 control-label">Table Type</label>
						                    <div class="col-sm-5">
						                    <select class="form-control" name="tabletype" id="tabletype" placeholder="Table Type" required="">
						                    <option>--Select--</option>
						                    <option> Garden</option>
						                     <option> Room(A/C)</option>
						                      <option> Room(Non-A/C)</option>
						                     </select>
						                    </div>
						                  
						                </div>
						                    
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                 <label for="address" class="col-sm-3 control-label">Table Number</label>
						                    <div class="col-sm-5">
						                        <input type="text" class="form-control" name="tableno" id="tableno" placeholder="Table number" required="" >
						                    </div>
						                </div>              
						                
						                <div class="col-sm-6" style="float: right">
						                <button type="submit" name="btnwaiter" value="Save" class="btn btn-primary" style="">Save</button>
						<!--                <button type="submit" class="btn btn-success">Save and Add Another</button>-->
						                </div>
								                                       
						             </form>
						             
						             <!-- manage chain file -->
                            
                             <div class="row">
				                <div class="table-responsive" style="margin-top: 10px">
				                    <table class="table table-bordered table-striped table-hover">
				                        <thead>
				                            <tr>
				                                
				                                <th class="text-center">SL</th>
				                                <th class="text-center">Waiter ID</th>
				                                <th class="text-center">Waiter Name</th>
				                                <th class="text-center">Table Type</th>
				                                <th class="text-center">Table Number</th>
				                                <th class="text-center">Edit Data</th>
				                               
				                            </tr>
				                        </thead>
				                         <tbody>
      							<%
      							int wid;
      							String waiterid;
      							String wname;
      							String type;
      							String tno;
      							
      							     							    							
      							%>
                           <%
                           try
                           {
                        	   Session sf1=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
                        	   Query query1 = sf1.createQuery("FROM Restaurantwaiter");
								Iterator<Restaurantwaiter> it=query1.iterate();
								while(it.hasNext())
								{
									Restaurantwaiter e=(Restaurantwaiter)it.next();
									wid=e.getId();
									waiterid=e.getWaiterid();
									wname=e.getWaitername();
									type=e.getTabletype();
									tno=e.getTableno();
									 %>
									 <tr>
									 <td><%=wid %></td>
									 <td><%=waiterid %></td>
									 <td><%=wname %></td>
									 <td><%=type %></td>
									 <td><%=tno %></td>
									 <td>
									 
									 <center>
				                                    <form action=" " accept-charset="utf-8">
				                                        
				                                    <a href="./../updaterestaurant/updatewaiter.jsp?id=<%=wid%>&waiterid=<%=waiterid%>&wname=<%=wname%>&tabletype=<%=type %>&tableno<%=tno %>" name="btnwaiter" value="Update" class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title data-original-title="Update">
				                                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
				                                        </a>     
				                                        
				                                        <a href="${pageContext.request.contextPath }/Restaurantwaitercontroller?a=<%=wid%>&btnwaiter=<%="Delete" %>"  class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="left"  title data-original-title="Delete" name="btnStock" value="Delete">
				                                        
				                                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
				                                        </a>
				                                    </form>
				                                    </center>
				                                </td>
				                            </tr>
				                              <%  }
								 sf1.close();
                           }    
			                        catch(Exception se)
			                        {
			                        	
			                        System.out.println("Error"+se.getMessage());	
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
                       
                       
                     
                       <!-- End Manage waiter file tab-->  
						             
						             
                             </div>
                              <!-- End Waiter tab-->
                              
                              
                              <!-- start Complementary tab -->
                              
                               
                              
                              <div role="tabpanel" class="tab-pane" id="Complementory">
                               <form class="form-horizontal text-left" action="${pageContext.request.contextPath }/Restaurantcomplementorycontroller" method="get">
						               <br> 
						               
						                
						                <div class="form-group">
						                    <label for="Code" class="col-sm-3 control-label">Code</label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="code" id="code"  placeholder="Code" required="">
						                    </div>
						                     
						                </div>
						                 <div class="clearfix"></div>
						                <div class="form-group">
						                    <label for="cname" class="col-sm-3 control-label">Name</label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="cname" id="cname" placeholder="Name" required="">
						                    </div>
						                   
						                </div>
						                
						               
						                 <div class="col-sm-6" style="float: right">
						                <button type="submit" name="btncomplementory" value="Save" class="btn btn-primary" style="">Save</button>
						<!--                <button type="submit" class="btn btn-success">Save and Add Another</button>-->
						                </div>
						                                       
						      </form>
						      <!-- manage Complementory -->
						          <div class="row">
				                <div class="table-responsive" style="margin-top: 10px">
				                    <table class="table table-bordered table-striped table-hover">
				                        <thead>
				                            <tr>
				                                
				                                <th class="text-center">SL</th>
				                                <th class="text-center">Code</th>
				                                <th class="text-center"> Name</th>
				                                <th class="text-center">Edit Data</th>
				                               
				                            </tr>
				                        </thead>
				                         <tbody>
      							<%
      							int cid;
      							String cname;
      							String code;
      							
      							
      							     							    							
      							%>
                           <%
                           try
                           {
                        	   Session sf1=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
                        	   Query query1 = sf1.createQuery("FROM Restaurantcguest");
								Iterator<Restaurantcguest> it=query1.iterate();
								while(it.hasNext())
								{
									Restaurantcguest e=(Restaurantcguest)it.next();
									cid=e.getId();
									cname=e.getName();
									code=e.getCode();
									 %>
									 <tr>
									 <td><%=cid %></td>
									 <td><%=code %></td>
									 <td><%=cname %></td>
									 
									 <td>
									 
									 <center>
				                                    <form action=" " accept-charset="utf-8">
				                                        
				                                         <a href="./../updaterestaurant/updatecomplementory.jsp?id=<%=cid%>&code=<%=code%>&cname=<%=cname%>" name="btncomplementory" value="Update" class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title data-original-title="Update">
				                                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
				                                        </a>
				                                        
				                                        <a href="${pageContext.request.contextPath }/Restaurantcomplementorycontroller?a=<%=cid%>&btncomplementory=<%="Delete" %>"  class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="left"  title data-original-title="Delete" name="btnStock" value="Delete">
				                                        
				                                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
				                                        </a>
				                                    </form>
				                                    </center>
				                                </td>
				                            </tr>
				                              <%  }
								 sf1.close();
                           }    
			                        catch(Exception se)
			                        {
			                        	
			                        System.out.println("Error"+se.getMessage());	
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
                          
                            
                            <!-- end Complementary tab-->
                            
                            <div role="tabpanel" class="tab-pane" id="Guest">
                            
                             <form class="form-horizontal text-left" action="${pageContext.request.contextPath }/RestaurantguesthistoryController" method="post">
						               <br> 
						                <div class="form-group">
						                    <label for="guestid" class="col-sm-2 control-label">Guest Id</label>
						                    <div class="col-sm-2">
						                    <input type="text" class="form-control" name="gid" id="guestid"  placeholder="Guest Id" required="">
						                    </div>
						             		 <label for="membercode" class="col-sm-2 control-label">Member Code</label>
						                    <div class="col-sm-2">
						                    <input type="text" class="form-control" name="mcd" id="membercode"  placeholder="Member ode" required="">
						                    </div>
						                     
						                </div>
						                 <div class="form-group">
						                    <label for="guestname" class="col-sm-2 control-label">Guest Name</label>
						                    <div class="col-sm-6">
						                    <input type="text" class="form-control" name="gnm" id="guestname"  placeholder="guestname" required="">
						                    </div>
						                       </div>  
						                        <div class="form-group">
						                    <label for="address" class="col-sm-2 control-label">Address</label>
						                    <div class="col-sm-6">
						                    <input type="text" class="form-control" name="add" id="address"  placeholder="address" required="">
						                    </div>
						                       </div>     
						                        <div class="form-group">
						                    <label for="city" class="col-sm-2 control-label">City</label>
						                    <div class="col-sm-2">
						                    <input type="text" class="form-control" name="city" id="city"  placeholder="City" required="">
						                    </div>
						             		 <label for="pincode" class="col-sm-2 control-label">Pin Code</label>
						                    <div class="col-sm-2">
						                    <input type="text" class="form-control" name="pin" id="pincode"  placeholder="Pin Code" required="">
						                    </div>
						                </div>
						                 <!-- <div class="form-group">
						                    <label for="profession" class="col-sm-2 control-label">Profession</label>
						                    <div class="col-sm-2">
						                    <input type="text" class="form-control" name="pro" id="profession"  placeholder="Profession" required="">
						                    </div>
						             		 <label for="spousename" class="col-sm-2 control-label">Spouse Name</label>
						                    <div class="col-sm-2">
						                    <input type="text" class="form-control" name="spo" id="spousename"  placeholder="Spousename" required="">
						                    </div>
						                    </div>
						                     <div class="form-group">
						                    <label for="bdate" class="col-sm-2 control-label">B'date</label>
						                    <div class="col-sm-2">
						                    <input type="date" class="form-control" name="bda" id="bdate"  placeholder="B'date" required="">
						                    </div>
						             		 <label for="mobileno" class="col-sm-2 control-label">Mobile no</label>
						                    <div class="col-sm-2">
						                    <input type="text" class="form-control" name="mob" id="mobileno"  placeholder="Mobile no" required="">
						                    </div>
						                </div>
						                <div class="form-group">
						                    <label for="email" class="col-sm-2 control-label">Email</label>
						                    <div class="col-sm-6">
						                    <input type="text" class="form-control" name="ema" id="email"  placeholder="Email" required="">
						                    </div>
						                       </div> 
						                 <div class="form-group">
						                    <label for="like" class="col-sm-2 control-label">Like</label>
						                    <div class="col-sm-2">
						                    <input type="text" class="form-control" name="lik" id="like"  placeholder="Like" required="">
						                    </div>
						             		 <label for="dislike" class="col-sm-2 control-label">Dislike</label>
						                    <div class="col-sm-2">
						                    <input type="text" class="form-control" name="dis" id="dislike"  placeholder="Dislike" required="">
						                    </div>
						                </div>
						                -->
						                
						                 <div class="col-sm-6" style="float: right">
						                <button type="submit" class="btn btn-primary" style="">Save</button>
						<!--                <button type="submit" class="btn btn-success">Save and Add Another</button>-->
						                </div>
						                                       
						             </form>
						             
						             
						             
						             <!-- Manage Chain File  -->
						             
						             <div class="row">
				                <div class="table-responsive" style="margin-top: 10px">
				                    <table class="table table-bordered table-striped table-hover">
				                        <thead>
				                            <tr>
				                                <th class="text-center">SL.</th>
				                                <th class="text-center">Guest ID</th>
				                                <th class="text-center">Member Code</th>
				                                <th class="text-center">Guest Name</th>
				                                <th class="text-center">Address</th>
				                                <th class="text-center">City</th>
				                                <th class="text-center">Pin Code</th>
				                                <th class="text-center">Profession</th>
				                                <th class="text-center">Spouse Name</th>
				                                <th class="text-center">B'Date</th>
				                                 <th class="text-center">Mobile No</th>
				                                  <th class="text-center">Email</th>
				                                   <th class="text-center">Like</th>
				                                    <th class="text-center">Dislike</th>
				                                     <th class="text-center">Edit Data</th>
				                            </tr>
				                        </thead>
				                         <tbody>
      							<%
      							int gid;
      							String guestid;
      							String membercode;
      							String gname;
      							String gaddress;
      							String gcity;
      							String pincode;
      							String profession;
      							String spousename;
      							String bdate;
      							String mobileno;
      							String email;
      							String like;
      							String dislike;
      							%>
                           <%
                           try
                           {
                        	   Session sf=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
                        	   Query query = sf.createQuery("FROM Restaurantchainfile");
								Iterator<Restaurantguesthistory> it=query.iterate();
								while(it.hasNext())
								{
									Restaurantguesthistory e=(Restaurantguesthistory)it.next();
									gid=e.getId();
									guestid=e.getGuestid();
									membercode=e.getMembercode();
									gname=e.getGuestname();
									gaddress=e.getAddress();
									gcity=e.getCity();
									pincode=e.getPincode();
									profession=e.getProfession();
									spousename=e.getSpousename();
									bdate=e.getBdate();
									mobileno=e.getMobileno();
									email=e.getEmail();
									like=e.getLike();
									dislike=e.getDislike();
									 %>
									 <tr>
									 <td><%=gid %></td>
									 <td><%=guestid %></td>
									 <td><%=membercode %></td>
									 <td><%=gname %></td>
									 <td><%=gaddress%></td>
									 <td><%=gcity %></td>
									 <td><%=pincode %></td>
									 <td><%=profession %></td>
									 <td><%=spousename %></td>
									 <td><%=bdate %></td>
									 <td><%=mobileno %></td>
									 <td><%=email %></td>
									 <td><%=like %></td>
									 <td><%=dislike %></td>
									 <td>
									 
									 <center>
				                                    <form action=" " accept-charset="utf-8">
				                                        
				                                        <a href=" " name=" " value="Update" class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title data-original-title="Update">
				                                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
				                                        </a>
				                                        
				                                        <a href="${pageContext.request.contextPath }/StockController?a=<%=gid%>&btnStock=<%="Delete" %>"  class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="left"  title data-original-title="Delete" name="btnStock" value="Delete">
				                                        
				                                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
				                                        </a>
				                                    </form>
				                                    </center>
				                                </td>
				                            </tr>
				                              <%  }
								 sf.close();
                           }    
			                        catch(Exception se)
			                        {
			                        	
			                        System.out.println("Error"+se.getMessage());	
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
                       
                       
                     
                       <!-- End Manage guest tab-->    
                     
                             </div>
                            
                           
                           
                		</div><!-- Tab Content End -->
                </div><!-- Panel Closed -->
       			</div><!-- col-md-12 end -->
       			</div><!-- Panel Body Closed -->
        </div>
		</div><!-- Container End -->
		 <!-- Restaurant Maintainance Closed-->
		
		<!-- main_container close -->
		</div><!-- Page Content End -->
		</div><!-- Main Container End -->
		<!-- container fluid close -->
		</div>
		
     
  </body>

</html>