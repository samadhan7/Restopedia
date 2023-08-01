<%@page import="org.hibernate.*" %>
<%@page import="model.com.inventory.StockEntry" %>
<%@page import="java.util.Iterator" %>
<%@page import="org.hibernate.cfg.*" %>
<%@page import="javax.servlet.*" %>
 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Stock Entry</title>
<%@include file="inventory.jsp" %>
</head>

<body class="nav-md">
    <div class="container body">
      <div class="main_container">
        
        <!-- page content -->
       <div class="right_col" role="main">
        <!-- Stock Entry --><br><br>
        	<div class="container">
	        <div class="panel panel-primary">
	            <div class="panel-heading ">
	                <h3 class="panel-title"> Stock Entry </h3>
	            </div>
	            <div class="panel-body">
                
                <div class="col-md-12">
                    <div class="panel" style="border-color: " style="background-color: #a9a9a9">
                        <ul class="nav nav-tabs" style="border-bottom-color: blue">
                            <li class="<%if(Integer.parseInt(request.getParameter("id"))==1){ %>active<%}%> ">
                                <a href="#Add" class="nav-links tab-pane fade-in-active" class=" " role="tab" data-toggle="tab"><button type="button" class="btn btn-success">Add New Stock</button></a>
                            </li>
                            <li class="nav-item <%if(Integer.parseInt(request.getParameter("id"))==2){ %>active<%}%>">
                                <a href="#Manage" class="nav-links" role="tab" data-toggle="tab"><button type="button" class="btn btn-warning">Manage Stock</button></a>
                            </li>
                            
                        </ul>
                        
                        <div class="tab-content">
                        
                            <!-- Start Stock Entry Tab-->
                        
                            <div role="tabpanel" class="tab-pane <%if(Integer.parseInt(request.getParameter("id"))==1){ %>active<%}%>" id="Add">  
                                                     
                              <form class="form-horizontal text-left" action="${pageContext.request.contextPath }/StockController" method="get">
						               <br>
						                <div class="clearfix"></div>						                
						               						                     
						               
						               
						                
						                <div class="form-group">
						                    <label for="date" class="col-sm-3 control-label"> Select Date <i class="text-danger">*</i></label> 
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
						                <label for="select" class="col-sm-3 control-label"> Select Product Category <i class="text-danger">*</i></label>
						                
						                <div class="col-sm-5">
						                <select class="form-control" id="category" required="" name="cat">
						                <option> Select Any Option</option>
						                <option> Dairy Product </option>
						                <option> Vegetables</option>
						                <option> grocery  </option>
						                <option> Dry-Foods  </option>
						                <option> Sauce </option>
						                <option> Fruits  </option>
						                <option> Grains  </option>
						                <option> Other </option>						                
						                </select>
						                </div>
						                </div>

						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="price" class="col-sm-3 control-label">Product Price : <i class="text-danger">*</i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="price" id="price" placeholder="Enter Product Price" required="" >
						                    </div>						                  
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="quantity" class="col-sm-3 control-label">Product Quantity : <i class="text-danger">*</i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="quantity" id="quantity" placeholder="Enter Product Quantity" required="" >
						                    </div>
						                  
						                </div>
						                
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="address" class="col-sm-3 control-label">Supplier Address :<i class="text-danger"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" name="address" id="address" placeholder=" Supplier Address" required="" class="form-control">
						                    </div>
						                </div>
						                    
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="contactno" class="col-sm-3 control-label">Shop Contact No :<i class="text-danger">*</i></label>
						                    <div class="col-sm-5">
						                        <input type="text" name="contactno" id="contactno" placeholder="Shop Contact No" class="form-control">
						                    </div>
						                </div>              
						                
						                
						                <div class="col-sm-6" style="float: right">
						                <button type="submit" class="btn btn-primary"name="btnStock" value="Save" style="">Save</button>
						<!--                <button type="submit" class="btn btn-success">Save and Add Another</button>-->
						                </div>                        
						             </form>
                            </div>
                            <!-- End Stock Entry tab-->
                            
                            
                            
                            <!-- Start Manage Stock tab-->
                            
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
				                                <th class="text-center">Stock Entry Date</th>
				                                <th class="text-center">Product Name</th>
				                                <th class="text-center">Product Category</th>
				                                <th class="text-center">Product Price </th>
				                                <th class="text-center">Product Quantity </th>
				                                <th class="text-center">Supplier Address </th>
				                                <th class="text-center">Supplier Contact NO </th>
				                                
				                                <th class="text-center"> Edit Data </th>
				                            </tr>
				                        </thead>
				                        
				                       <tbody>
				                        <%
				                         int id;
				                        String  entry_date;
				                        String product_name;
				                        String category;
				                        String price;
				                        String quantity;
				                        String address;
				                        String contact_no;
				                       
				                        
				                        %>
				                        <%
                                try{
								
								Session sf=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
								
								Query query = sf.createQuery("FROM StockEntry");
								Iterator<StockEntry> it=query.iterate();
								while(it.hasNext())
								{
									StockEntry e=(StockEntry)it.next();
								id=e.getProduct_id();
								entry_date=e.getDate();
								product_name=e.getName();
								category=e.getCategory();
								price=e.getPrice();
								quantity=e.getQuantity();
								address=e.getAddress();
								contact_no=e.getContact_no();
								
								%>
				                            <tr>
				                            	
				                                <td><%=id %></td>
				                                <td><%=entry_date %></td>
				                                <td><%=product_name %></td>
				                                <td><%=category %></td>
				                                <td><%=price %></td>
				                                <td><%=quantity %></td>
				                                <td><%=address %></td>
				                                <td><%=contact_no %></td>
				                                
				                                <td>
				                            
				                                
				                               
				                                    <center>
				                                    <form action=" " accept-charset="utf-8">
				                                        
				                                        <a href="./../updateinventory/updatestock.jsp?id=<%=id%>&date=<%=entry_date%>&name=<%=product_name%>&category=<%=category%>&price=<%=price%>&quantity=<%=quantity%>&address=<%=address%>&contactno=<%=contact_no%>" name="btnStock" value="Update" class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title data-original-title="Update">
				                                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
				                                        </a>
				                                        
				                                        <a href="${pageContext.request.contextPath }/StockController?a=<%=id%>&btnStock=<%="Delete" %>"  class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="left"  title data-original-title="Delete" name="btnStock" value="Delete">
				                                        
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
                            <!-- End Manage Stock tab-->    
                    </div>
                </div>
                </div>
       			</div>
       			</div>
                <!-- Stock Entry Closed-->
        
        </div>
		</div>
		</div>
		<!-- main_container close -->
		</div>
		<!-- container fluid close -->
		
    
  </body>

</html>