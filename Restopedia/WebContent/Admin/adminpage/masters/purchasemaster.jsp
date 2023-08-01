<%@page import="model.com.master.Purchase"%>
<%@page import="model.com.master.Supplier"%>
<%@page import="sessionconfiq.HibernateUtil"%>
<%@page import="org.hibernate.*" %>
<%@page import="javax.servlet.*" %>
<%@page import="java.util.Iterator" %>
<%@page import="org.hibernate.cfg.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Purchase Master</title>
<%@include file="masters.jsp"%>
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
	                <h3 class="panel-title">Purchase Master</h3>
	            </div>
	            <div class="panel-body">
                
                <div class="col-md-12">
                    <div class="panel" style="border-color: " style="background-color: #a9a9a9">
                        <ul class="nav nav-tabs" style="border-bottom-color: blue">
                            <li class="<%if(Integer.parseInt(request.getParameter("id"))==1){ %>active<%}%>">
                                <a href="#Add" class="nav-links tab-pane fade-in-active" class="active" role="tab" data-toggle="tab"><button type="button" class="btn btn-success">Purchase Entry</button></a>
                            </li>
                           <%--  <li class="nav-item <%if(Integer.parseInt(request.getParameter("id"))==2){ %>active<%}%>">
                                <a href="#Return" class="nav-links" role="tab" data-toggle="tab"><button type="button" class="btn btn-warning">Purchase Return</button></a>
                            </li> --%>
                            <li class="nav-item <%if(Integer.parseInt(request.getParameter("id"))==3){ %>active<%}%>">
                                <a href="#Manage" class="nav-links" role="tab" data-toggle="tab"><button type="button" class="btn btn-info">Manage Purchase</button></a>
                            </li> 
                            
                        </ul>
                        
                 <div class="tab-content">
                     <!-- Start Purchase Entry Tab-->
                     <div role="tabpanel" class="tab-pane <%if(Integer.parseInt(request.getParameter("id"))==1){ %>active<%}%>" id="Add">  
             
			             <div class="row">                                       
			             <form class="form-horizontal" action="${pageContext.request.contextPath }/PurchaseControlller" method="GET">
			                <br>
			                <input type="hidden" class="form-control" name="type" value="Save" >
			                
			                <div class="form-group">
			                    <label for="sname" class="col-sm-2 control-label">Supplier <i class="text-danger">*</i></label>
			                    <div class="col-sm-2">
			                        <select class="form-control" name="suppliername" id="suppliername" >
			                        
			                        <option value="" disabled selected>--Select Supplier--</option>
			                        <%
			                        HibernateUtil.createsession();
			                   		Iterator<Supplier> it = HibernateUtil.getSupplierName();
			                    	while(it.hasNext()){
			                    		Supplier s=(Supplier)it.next();
			                    	%>
			                    		<option value="<%=s.getId()%>"><%=s.getSname() %></option>
			                    	<% }
			                    	HibernateUtil.destroysession();
			                   	%> 
			                        </select> 
			                    </div>
			                    <div class="col-sm-1">
			                        <small><a href="suppliermaster.jsp?id=1">Add Supplier</a></small>
			                    </div>
			                    
			                    <label for="pdate" class="col-sm-2 control-label">Purchase Date</label>
			                    <div class="col-sm-3">
			                    	 <input type="date" class="form-control" name="date" id="date" >
			                        <!-- <p class="form-control" name="pdate" id="date" required="" />
			                        <script>
			                        n =  new Date();
			                        y = n.getFullYear();
			                        m = n.getMonth() + 1;
			                        d = n.getDate();
			                        document.getElementById("date").innerHTML = m + "/" + d + "/" + y;
			                        </script> -->
			                    </div>
			                </div>
			                
			                <div class="clearfix"></div>
			                
			                <div class="form-group">
			                    <label for="invoice" class="col-sm-2 control-label">Invoice No.<i class="text-danger">*</i></label>
			                    <div class="col-sm-3">
			                        <input type="text" class="form-control" name="invoice" id="invoice" placeholder="Invoice Number" required="">
			                    </div>
			                    
			                    <label for="grandTotal" class="col-sm-2 control-label">Grand Total<i class="text-danger">*</i></label>
			                    <div class="col-sm-3">
			                        <input type="text" class="form-control" name="grandTotal" id="grandTotal"  >
			                    </div>
			                </div>
			                
			                <div class="clearfix"></div>
			                
			                              
			                <div class="clearfix"></div>
			                
			                <div class="table-responsive" style="margin-top: 10px">
			                    <table class="table table-bordered table-hover" id="myTable">
			                        <thead>
			                            <tr>
			                                <th class="text-center">Item Information<i class="text-danger">*</i></th>
			                                <th class="text-center">Quantity<i class="text-danger">*</i></th>
			                                <th class="text-center">Rate<i class="text-danger">*</i></th>
			                                <th class="text-center">Total</th>
			                                <th class="text-center">Action<i class="text-danger">*</i></th>
			                            </tr>
			                        </thead>
			                        
			                        <tbody >
			                            <tr class="">
			                                <td class="text-center">
			                                   <input type="text" class="form-control" name="item" id="item" placeholder="item" >
			                                   <input type="hidden" class="form-control" name="itemhiddenname" id="itemhiddenname">
			                               </td>
			                                
			                                <td class="text-center">
			                                   <input type="number" class="form-control" name="quantity" id="quantity" oninput="multi()"  placeholder="quantity" >   
			                                   <input type="hidden" class="form-control" name="itemhiddenquantity" id="itemhiddenquantity">
			                                </td>
			                                
			                                <td class="text-center">
			                                    <input type="number" class="form-control" name="rate" id="rate" oninput="multi()" placeholder="rate" >
			                                    <input type="hidden" class="form-control" name="itemhiddenrate" id="itemhiddenrate">
			                                </td>
			                                
			                                <td class="text-center">
			                                    <input type="text" class="form-control" name="total" id="total" placeholder="total" disabled >
			                                </td>
			                                
			                                <td>
			                                    <center>
			                                    
			                                        <a href="#" class="btn btn-danger btn-sm delete-row" data-toggle="tooltip" data-placement="left" title data-original-title="Delete">
			                                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
			                                        </a>
			                                    
			                                    </center>
			                                </td>
			                            </tr>
			                        	
			                        	
			                        	
			                            <tr class="">
			                                <td class="text-left">
			                                   
			                                </td>
			                                
			                                <td class="text-center">
			                                    
			                                </td>
			                                
			                                <td class="text-right">
			                                                                 
			                                </td>
			                                
			                                <td class="text-center">
			                                   
			                                </td>
			                                
			                                <td>
			                                    <button type="button" id="addTable" class="btn btn-info add-row">Add New Item</button>
			                                </td>
			                            </tr>
			                            
			                            
			                        </tbody>
			                    </table>
			                  <!-- Multiplication -->
			                     <script>
							        function multi() {
									var quantity = document.getElementById('quantity').value;	
									var rate = document.getElementById('rate').value;
									var total = document.getElementById('total');
									var multiply = quantity * rate;
									total.value = multiply;
									
									}
							    </script>
							    
			                    <!-- Multiplication End -->
			                    
			                    <!-- Addition  -->
			                    
			                    
			                    <script src="../js/jquery-3.1.0.js" type="text/javascript"></script>
			          <!-- <script>
							function myFunction() {
							    var table = document.getElementById("myTable");
							    var row = table.insertRow();
							    var cell1 = row.insertCell(0);
							    var cell2 = row.insertCell(1);
							    var cell3 = row.insertCell(2);
							    var cell4 = row.insertCell(3);
							    var cell5 = row.insertCell(4);
							    cell1.innerHTML = "NEW CELL1";
							    cell2.innerHTML = "NEW CELL2";
							    cell3.innerHTML = "NEW CELL3";
							    cell4.innerHTML = "NEW CELL4";
							    cell5.innerHTML = "NEW CELL5";
							 
							}
						</script> -->
						
					<!-- Dynamically Create and delete table start -->	
						<script type="text/javascript">
						
						    $(document).ready(function(){
						        $(".add-row").click(function(){
						            var item = $("#item").val();
						            var quantity = $("#quantity").val();
						            var rate = $("#rate").val();
						            var total = $("#total").val();
						            
						            if (item === '' || quantity === '' || rate === '' || total === '' ) {
						                alert('Text-field is empty.');
						                return false;
						            }
						            
						            var markup = "<tr><td>" + item + "</td><td>" + quantity + "</td><td>" + rate + "</td><td>" + total + "</td> <td><input type='checkbox' name='record'></td></tr>";
						            $("table tbody").append(markup);
						            /* blank text */
						            $("#item").val(" ");
						            $("#quantity").val(" ");
						            $("#rate").val(" ");
						            $("#total").val(" ");
						            
						          /* Hidden field */  
						            
						            var itemhiddenname = $("#itemhiddenname").val();
						            var itemhiddenquantity = $("#itemhiddenquantity").val();
						            var itemhiddenrate = $("#itemhiddenrate").val();
						            
			
						            if (itemhiddenname === '' || itemhiddenquantity === '' || itemhiddenrate === '' ) {
						            	$("#itemhiddenname").val(item);
						            	$("#itemhiddenquantity").val(quantity);
						            	$("#itemhiddenrate").val(rate);
						            }
						            else{
						            	itemhiddenname=itemhiddenname +","+ item;
						            	itemhiddenquantity=itemhiddenquantity +","+ quantity;
						            	itemhiddenrate=itemhiddenrate +","+ rate;
						            	
						            	$("#itemhiddenname").val(itemhiddenname);
						            	$("#itemhiddenquantity").val(itemhiddenquantity);
						            	$("#itemhiddenrate").val(itemhiddenrate);
						            	
						            	
						            }
						            
						            
						            
						        });
						        
						        // Find and remove selected table rows
						        $(".delete-row").click(function(){
						            $("table tbody").find('input[name="record"]').each(function(){
						            	if($(this).is(":checked")){
						            		/* $(this).parents("tr").remove(); */
						            		alert(document.getElementById("myTable").rows[3].cells[3].innerHTML);
						               
						                }
						            });
						        });
						    });    
						    
						    
						</script>
			        <!-- Dynamically Create and delete table end -->            
						
			                </div>
			               
			                <div class="col-sm-6">
			                <button type="submit" name="btnPurchase" value="Save" class="btn btn-primary">Save</button>
			                </div>                        
			             </form>
			             <!-- Purchase Entry Form Close -->
					</div>				           
								
                            </div>
                            <!-- End Purchase Entry tab-->
                            
                            <!-- Multiplication -->
			                     <script>
							        function calculate() {
									var quantity = document.getElementById('quantity').value;	
									var rate = document.getElementById('rate').value;
									var total = document.getElementById('totalprice');
									
									var multiply = quantity * rate;
									total.value = multiply;
									
									}
							     </script>
                            
                            <!-- Start Purchase Return tab-->
                            
                            <%-- <div role="tabpanel" class="tab-pane <%if(Integer.parseInt(request.getParameter("id"))==2){ %>active<%}%>" id="Return">
                                 <form class="form-horizontal text-left" action="" method=" ">
						               <br> 
						                 <div class="clearfix"></div>
						                 
						                
						                <div class="form-group">
						                    <label for="suppliername" class="col-sm-3 control-label">Supplier Name<i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="suppliername" id="suppliername"  placeholder="Supplier Name" required="">
						                    </div>
						                     
						                </div>
						                
						                <div class="clearfix"></div>
						                 
						                
						                <div class="form-group">
						                    <label for="suppliercontact" class="col-sm-3 control-label">Supplier Contact Number<i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="suppliercontactno" id="suppliercontactno"  placeholder="Supplier Contact Number" required="">
						                    </div>
						                     
						                </div>
						                
						                <div class="form-group">
						                    <label for="supplieraddress" class="col-sm-3 control-label">Supplier Address<i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="supplieraddress" id="supplieraddress"  placeholder="Supplier Address" required="">
						                    </div>
						                     
						                </div>
						                
						                <div class="form-group">
						                    <label for="purchaseproductname" class="col-sm-3 control-label">Purchase Product Name <i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="purchaseproductname" id="purchaseproductname" placeholder="Return Product Name" required="">
						                    </div>
						                   
						                </div>
						                
						                
						                <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="productnumber" class="col-sm-3 control-label">Product Number <i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="productnumber" id="productnumber"  placeholder=" Product Number" required="">
						                   </div> 
						                   </div>
						                 <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="date" class="col-sm-3 control-label">Date<i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="date" class="form-control" name="date" id="date"  placeholder="date" required="">
						                    </div>
						                     
						                </div>
						               
						               <div class="clearfix"></div>
						                
						                <div class="form-group">
						                    <label for="productnumber" class="col-sm-3 control-label">Quantity <i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="quantity" id="quantity"  placeholder="Quantity" required="">
						                   </div> 
						                   </div>
						               <div class="clearfix"></div>
						                 
						                
						                <div class="form-group">
						                    <label for="rate" class="col-sm-3 control-label">Rate<i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="rate" id="rate"  placeholder="Rate"  disabled required="">
						                    </div>
						                     
						                </div>
						              				                
						                 <div class="form-group">
						                    <label for="totalprice" class="col-sm-3 control-label">Total Price<i class="text"></i></label>
						                    <div class="col-sm-5">
						                    <input type="text" class="form-control" name="totalprice" id="totalprice"  placeholder="Total Price" disabled required="">
						                    </div>
						                     
						                </div>
						              				                
						              
						                
						               <div class="col-sm-6" style="float: right">
						                <button type="submit" class="btn btn-primary" style="">Save</button>
						<!--                <button type="submit" class="btn btn-success">Save and Add Another</button>-->
						                </div>
								  
						                                       
						             </form>
                                
                            </div> --%>
                            
                              
				    
                            <!-- End Purchase Return tab-->
                            
                             <!-- Start Manage Purchase tab-->
                            
                            <div role="tabpanel" class="tab-pane" id="Manage">
                                
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
				                                <th class="text-center">Supplier Name</th>
				                                <th class="text-center">Invoice No.</th>
				                                <th class="text-center">Date</th>
				                                <th class="text-center">Grand Total</th>
				                                <th class="text-center">Item Name</th>
				                                <th class="text-center">Quantity</th>
				                                <th class="text-center">Rate</th>
				                                
				                                <th class="text-center">Action</th>
				                            </tr>
				                        </thead>
				                       	<tbody>
				                       <%
				                        int id;
				                        String suppliername;
				                        String date;
				                        String invoice;
				                        String grandTotal;

				                        String item;
				                        String quantity;
				                        String rate;
				                       %>
				                       
				                        <%
                               
								
                                	HibernateUtil.createsession();
								Iterator<Purchase> it3=HibernateUtil.getPurchase();
								while(it3.hasNext())
								{
									Purchase p=(Purchase)it3.next();
									id=p.getId();
								   	
									Iterator<Supplier> it1 =  HibernateUtil.getSupplierNamebyid(Integer.parseInt(p.getSuppliername()));  // for getting Supplier name fromMenu Supplier table
									Supplier s = (Supplier)it1.next();
									
								%>
				                            <tr>
				                                <td><%=id %></td>
				                                <td><%=s.getSname() %></td>
				                               <td> <a href="#"><%=p.getInvoice() %></a></td>
				                                <td><%=p.getDate() %></td>
				                                <td><%=p.getGrandTotal() %></td>
				                                <td><%=p.getItem() %></td>
				                                <td><%=p.getQuantity() %></td>
				                                <td><%=p.getRate() %></td>
				                                
				                                <td>
				                                    <center>
				                                    <form action="" accept-charset="utf-8">
				                                        
				                                        <a href="./../updatepage/updatecustomer.jsp?id=<%=p.getId()%>&suppliername=<%=p.getSuppliername()%>&invoice=<%=p.getInvoice()%>&date=<%=p.getDate()%>&grandTotal=<%=p.getGrandTotal() %>&item=<%=p.getItem()%>&quantity=<%=p.getQuantity()%>&rate=<%=p.getRate()%>" class="btn btn-info btn-sm" data-toggle="tooltip" sdata-placement="left" title data-original-title="Update">
				                                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
				                                        </a> 
				                                         <a href="${pageContext.request.contextPath }/PurchaseController?id=<%=id%>&type=<%="Delete" %>" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="left" title data-original-title="Delete" name="btnCustomer" value="Delete">
				                                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
				                                        </a> 
				                                    </form>
				                                    </center>
				                                </td>
				                            </tr>
				                            <%
								
                              		  }
								 HibernateUtil.destroysession();
                                
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
                            <!-- End Manage Purchase tab-->
                        </div>
                    </div>
                </div>
                </div>
       			</div>
       			</div>
                <!-- Supplier Master Closed-->
        
        </div>
		</div>
		<!-- main_container close -->
		</div>
		<!-- container fluid close -->
		
  </body>

</html>