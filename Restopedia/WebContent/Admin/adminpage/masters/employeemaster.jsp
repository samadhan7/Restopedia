<%@page import="org.hibernate.*" %>
<%@page import="com.restopedia.Employee" %>
<%@page import="java.util.Iterator" %>
<%@page import="org.hibernate.cfg.*" %>
<%@page import="javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Master</title>
<jsp:include page="masters.jsp" />
</head>

<body class="nav-md">
     <div class="container body">
      <div class="main_container">  
      
        <!-- page content -->
               <div class="right_col" role="main">
        <!-- Employee Master--><br><br>
        	<div class="container">
	        <div class="panel panel-primary">
	            <div class="panel-heading ">
	                <h3 class="panel-title">Employee Master</h3>
	            </div>
	            <div class="panel-body">
                
                <div class="col-md-12">
                    <div class="panel" style="border-color: " style="background-color: #a9a9a9">
                        <ul class="nav nav-tabs" style="border-bottom-color: blue">
                            <li class="<%if(Integer.parseInt(request.getParameter("id"))==1){ %>active<%}%>">
                                <a href="#Add" class="nav-links tab-pane fade-in-active" class="" role="tab" data-toggle="tab"><button type="button" class="btn btn-success">Add New Employee</button></a>
                            </li>
                            <li class="nav-item <%if(Integer.parseInt(request.getParameter("id"))==2){ %>active<%}%>">
                                <a href="#Manage" class="nav-links"  role="tab" data-toggle="tab"><button type="button" class="btn btn-warning">Manage Employee</button></a>
                            </li>
                            
                        </ul>
                        
                        <div class="tab-content">
                            <!-- Start Add Employee Tab-->
                            
                            <div role="tabpanel" class="tab-pane <%if(Integer.parseInt(request.getParameter("id"))==1){ %>active<%}%>" id="Add">  
                                                     
                                <form class="form-horizontal text-left" action="${pageContext.request.contextPath }/EmployeeController" method="GET">
                                
						               <br> 
						               	<input type="hidden" class="form-control" name="type" value="Save" >
						               
						                <div class="form-group">
						                    <label for="ename" class="col-sm-3 control-label">Employee Name <i class="text-danger">*</i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="ename" id="ename" placeholder="Employee Name" required="">
						                    </div>
						                   
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="email" class="col-sm-3 control-label">Employee Email <i class="text-danger">*</i></label>
						                    <div class="col-sm-5">
						                    <input type="email" class="form-control" name="email" id="email"  placeholder="Employee Email" required="">
						                    </div>
						                     
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="contact" class="col-sm-3 control-label">Employee Contact No.<i class="text-danger">*</i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="contact" id="contact" placeholder="Contact No." required="" >
						                    </div>
						                  
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="address" class="col-sm-3 control-label">Employee Address</label>
						                    <div class="col-sm-5">
						                    <textarea rows="4" cols="48" name="address" id="address" placeholder="Employee Address......" required=""></textarea>
						                    </div>
						                </div>
						                    
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="details" class="col-sm-3 control-label">Employee designation</label>
						                    <div class="col-sm-5">
						                    <select class="form-control" name="designation" id="designation" >
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
						                <button type="submit" class="btn btn-primary" name="btnEmployee" style="">Save</button>
						<!--                <button type="submit" class="btn btn-success">Save and Add Another</button>-->
						                </div>                        
						             </form>
						  </div>
                            <!-- End Add Employee tab-->
                            
                            
                            
                            <!-- Start Manage Employee tab-->
                            
                            <div role="tabpanel" id="Manage" class=" tab-pane selectDataloadType <%if(Integer.parseInt(request.getParameter("id"))==2){ %>active<%}%>">
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
				                                <th class="text-center">Employee Name</th>
				                                <th class="text-center">Employee Email</th>
				                                <th class="text-center">Employee Mobile</th>
				                                <th class="text-center">Employee Address</th>
				                                <th class="text-center">Designation</th>
				                                <th class="text-center">Action</th>
				                            </tr>
				                        </thead>
				                        
				                        <tbody>
				                        <%
				                         int id;
				                        String ename;
				                        String email;
				                        String contact;
				                        String address;
				                        String designation;
				                        %>
				                        <%
                                try{
								
								Session sf=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
								
								Query query = sf.createQuery("FROM Employee");
								Iterator<Employee> it=query.iterate();
								while(it.hasNext())
								{
									Employee e=(Employee)it.next();
								id=e.getId();
								ename=e.getName();
								email= e.getEmail();
								contact= e.getContact();
								address= e.getAddress();
								designation= e.getDesignation();
								
								%>
				                            <tr>
				                                <td><%=id %></td>
				                                <td><%=ename %></td>
				                                <td><%=email %></td>
				                                <td><%=contact %></td>
				                                <td><%=address %></td>
				                                <td><%=designation %></td>
				                                <td>
				                                    <center>
				                                    <form action="" accept-charset="utf-8">
				                                        
				                                        <a href="./../updatepage/updateemployee.jsp?id=<%=id %>&ename=<%=ename%>&email=<%=email%>&contact=<%=contact%>&address=<%=address%>&designation=<%=designation%>" class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title data-original-title="Update">
				                                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
				                                        </a>
				                                        <a href="${pageContext.request.contextPath }/EmployeeController?id=<%=id %>&type=<%="Delete" %>" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="left" title data-original-title="Delete">
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
				                </div>
				                
				                <div class="col-sm-2 " style="float: right;">
				                <button type="submit" class="btn btn-primary" > Previous </button>
				                <button type="submit" class="btn btn-success" > Next </button>
				                </div>                        
				            </div>
                                
                            </div>
                            <!-- End Manage Employee tab-->
                        </div>
                    </div>
                </div>
                </div>
       			</div>
       			</div>
                <!-- Employee Master Closed-->
        
        </div>                      
         </div>
		</div>
		<!-- main_container close -->
		<!-- container fluid close -->
		
  </body>

</html>