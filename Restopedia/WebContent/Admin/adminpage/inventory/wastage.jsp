<%@page import="org.hibernate.*" %>
<%@page import="model.com.inventory.Wastage" %>
<%@page import="java.util.Iterator" %>
<%@page import="org.hibernate.cfg.*" %>
<%@page import="javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wastage</title>
<jsp:include page="inventory.jsp" />
</head>
<body class="nav-md">
    <div class="container body">
      <div class="main_container">
        
        <!-- page content -->
       <div class="right_col" role="main">
        <!-- Wastage--><br><br>
        	<div class="container">
	        <div class="panel panel-primary">
	            <div class="panel-heading ">
	                <h3 class="panel-title"> Wastage Details </h3>
	            </div>
	            <div class="panel-body">
                
                <div class="col-md-12">
                    <div class="panel" style="border-color: " style="background-color: #a9a9a9">
                        <ul class="nav nav-tabs" style="border-bottom-color: blue">
                            <li class="<%if(Integer.parseInt(request.getParameter("id"))==1){ %>active<%}%>">
                                <a href="#Add" class="nav-links tab-pane fade-in-active" class=" " role="tab" data-toggle="tab"><button type="button" class="btn btn-success">Wastage Entry </button></a>
                            </li>
                            <li class="nav-item <%if(Integer.parseInt(request.getParameter("id"))==2){ %>active<%}%>">
                                <a href="#Manage" class="nav-links" role="tab" data-toggle="tab"><button type="button" class="btn btn-warning">Manage Wastage</button></a>
                            </li>
                            
                        </ul>
                        
                        <div class="tab-content">
                        
                            <!-- Start Wastage Entry Tab-->
                            
                            <div role="tabpanel" class="tab-pane <%if(Integer.parseInt(request.getParameter("id"))==1){ %>active<%}%>" id="Add">  
                                                     
                              <form class="form-horizontal text-left" action="${pageContext.request.contextPath }/WastageController" method="GET">
						               <br>
						               
						                <div class="clearfix"></div>						                
						                <div class="form-group">
						                    <label for="sdate" class="col-sm-3 control-label"> Enter Date <i class="text-danger">*</i></label> 
						                    <div class="col-sm-5">
						                    <input type="date" class="form-control" name="date" id="date" placeholder="" required="">
						                    </div>
						                   
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="pname" class="col-sm-3 control-label">Enter Product Name<i class="text-danger">*</i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="name" id="name"  placeholder="Enter Product Name" required="">
						                    </div>
						                     
						                </div>
						               
						               <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="productprice" class="col-sm-3 control-label">Product Price : <i class="text-danger">*</i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="price" id="price" placeholder="Wastage Product Price" required="" >
						                    </div>						                  
						                </div>
						               
						               <div class="clearfix"></div>						                
						                <div class="form-group">
						                    <label for="pwastage" class="col-sm-3 control-label">Reason of Wastage<i class="text-danger">*</i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="reason" id="reason"  placeholder="Reason Of wastage" required="">
						                    </div>						                     
						                </div>
						                
						                <div class="form-group">
						                    <label for="wquantity" class="col-sm-3 control-label">Wastage Quantity:<i class="text-danger">*</i></label>
						                    <div class="col-sm-5">
						                        <input type="text" name="quantity" id="quantity" placeholder="wastage Quantity" class="form-control">
						                    </div>
						                </div>
						                
						                
						                 
						    
                             <div class="col-sm-6 " style="float:right;">
				                <button type="submit" class="btn btn-primary" name="btnWastage" value="Save"> Save </button>
				                </div>
				                  </form>
                            </div>
                            
                            <!-- End Wastage Entry tab-->
                            
                            <!-- Start Manage Wastage tab-->
                            
                            
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
				                                <th class="text-center">Date</th>
				                                <th class="text-center">Product Name</th>
				                                <th class="text-center">Product Price</th>
				                                <th class="text-center">Reason of Wastage</th>
				                                <th class="text-center">Wastage Quantity </th>
				                                <th class="text-center">Edit Data</th>
				                            </tr>
				                        </thead>
				                        
				                         <tbody>
				                        <%
				                         int id;
				                        String date;
				                        String pname;
				                        String price;
				                        String reason;
				                        String quantity;
				                         %>
				                        <%
                                try{
								
								Session sf=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
								
								Query query = sf.createQuery("FROM Wastage");
								Iterator<Wastage> it=query.iterate();
								while(it.hasNext())
								{
									Wastage w=(Wastage)it.next();
									id=w.getId();
								date=w.getDate();
								pname=w.getName();
								price=w.getPrice();
								reason=w.getReason();
								quantity=w.getQuantity();
								
								
								%>
				                            <tr>
				                                <td><%=id %></td>
				                                <td><%=date %></td>
				                                <td><%=pname %></td>
				                                <td><%=price %></td>
				                                <td><%=reason %></td>
				                                <td><%=quantity %></td>
				                                <td>
				                                
				                                
				                                    <center>
				                                    <form action="" accept-charset="utf-8">
				                                        
				                                       <a href="./../updateinventory/updatewastage.jsp?id=<%=id%>&name=<%=pname%>&price=<%=price%>&reason=<%=reason%>&quantity=<%=quantity%>"  name="btnWastage" value="Update" class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title data-original-title="Update">
				                                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
				                                        </a>
				                                         <a href="${pageContext.request.contextPath }/WastageController?a=<%=id%>&btnWastage=<%="Delete" %>"  class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="left"  title data-original-title="Delete" name="btnWastage" value="Delete">
				                                        
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
                            
                    
                            </div>
                            
                        </div>
                    </div>
                </div>
                </div>
       			</div>
       		
                <!-- Wastage Details Closed-->
        
        </div>
		</div>
		
		</div>
		
		<!-- main_container close -->
		
		<!-- container fluid close -->
		
    
    
  </body>

</html>