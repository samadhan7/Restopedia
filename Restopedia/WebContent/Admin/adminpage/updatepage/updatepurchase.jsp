<%@page import="com.restopedia.TableDesc"%>
<%@page import="com.restopedia.Tablecontent"%>
<%@page import="sessionconfiq.HibernateUtil"%>
<%@page import="org.hibernate.*" %>
<%@page import="java.util.Iterator" %>
<%@page import="org.hibernate.cfg.*" %>
<%@page import="javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Update Purchase</title>
<%@include file="update.jsp"%>
</head>
<body class="nav-md">
    <div class="container body">
      <div class="main_container">
        
        <!-- page content -->
        <div class="right_col" role="main">
        <!-- Supplier Master--><br><br>
        	<div class="container">
	        <div class="panel panel-primary">
	            <div class="panel-heading ">
	                <h3 class="panel-title">Update Purchase</h3>
	            </div>
	            <div class="panel-body">
                
                <div class="col-md-12">
                    <div class="panel" style="border-color: " style="background-color: #a9a9a9">
                        <ul class="nav nav-tabs" style="border-bottom-color: blue">
                            <li class="active">
                                <a href="#Update" class="nav-links tab-pane fade-in-active" class="active" role="tab" data-toggle="tab"><button type="button" class="btn btn-success">Update Purchase</button></a>
                            </li>
                            
                        </ul>
                        
                        <div class="tab-content">
                        
                            <!-- Start Add Table Tab-->
                        
                            <div role="tabpanel" class="tab-pane active" id="Update">  
                                                     
                            
                                <form class="form-horizontal text-left" action="${pageContext.request.contextPath }/PurchaseController" method="post">
						               <br> 
						               <input type="hidden" class="form-control" name="id" value="<%=request.getParameter("id")%>" >
                             			<input type="hidden" class="form-control" name="type" value="Update" >
						                <div class="form-group">
						                    <label for="suppliername" class="col-sm-3 control-label">Supplier name<i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="suppliername" id="suppliername"  value="<%=request.getParameter("suppliername")%>">
						                    </div>
						                     
						                </div>
						                 <div class="clearfix"></div>
						                 
						                
						                <div class="form-group">
						                    <label for="suppliercontactnumber" class="col-sm-3 control-label">Supplier Contact Number<i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="suppliercontactnumber" id="suppliercontactnumber"  value="<%=request.getParameter("suppliercontactnumber")%>">
						                    </div>
						                     
						                </div>
						                
						                <div class="form-group">
						                    <label for="supplieraddress" class="col-sm-3 control-label">Supplier Address<i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="supplieraddress" id="supplieraddress"  value="<%=request.getParameter("supplieraddress")%>">
						                    </div>
						                     
						                </div>
						                
						                <div class="form-group">
						                    <label for="Purchaseproductname" class="col-sm-3 control-label">Purchase Product Name <i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="purchaseproductname" id="purchaseproductname" value="<%=request.getParameter("purchaseproductname")%>">
						                    </div>
						                   
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="productnumber" class="col-sm-3 control-label">Product Number <i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="productnumber" id="productnumber"  value="<%=request.getParameter("productnumber")%>">
						                   </div><br>
						                   <br>
						               
						                 <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="date" class="col-sm-3 control-label">Date<i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="date" class="form-control" name="date" id="date"  value="<%=request.getParameter("date")%>">
						                    </div>
						                     
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="quantity" class="col-sm-3 control-label">Quantity<i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="number" class="form-control" name="quantity" id="quantity" oninput="calculate()" value="<%=request.getParameter("quantity")%>">
						                    </div>
						                     
						                </div>
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="rate" class="col-sm-3 control-label">Rate<i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="number" class="form-control" name="rate" id="rate" oninput="calculate()" value="<%=request.getParameter("rate")%>">
						                    </div>
						                     
						                </div>
						                
						              <div class="clearfix"></div>
						                 
						                
						                <div class="form-group">
						                    <label for="totalprice" class="col-sm-3 control-label">Total Price<i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="totalprice" id="totalprice"  disabled value="<%=request.getParameter("totalprice")%>">
						                    </div>
						                     
						                </div>
						              
						              
						                
						               <div class="col-sm-6" style="float: right">
						                <button type="submit" class="btn btn-primary" value="Update" name="btnpurchase">Update</button>
						<!--                <button type="submit" class="btn btn-success">Save and Add Another</button>-->
						                </div>
						                                       
						         </form>
                            </div>
                            <!-- End Update Table tab-->
                            
                            
                           
                       
  
                    </div>
                </div>
                </div>
       			</div>
       			</div>
                <!-- Table Master Closed-->
        
        </div>
		</div>
		<!-- main_container close -->
		</div>
		</div>
		<!-- container fluid close -->
		
		<script>
		$(".update").click(function(){
			
	
			alert($(this).attr('name'));
			$("#id").val($(this).attr('name'));
			
			
		});

		</script>
 
  </body>

</html>