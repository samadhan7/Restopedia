<%@ page
	import="java.util.*,com.restopedia.*, org.hibernate.*,org.hibernate.cfg.*"%>
<%@page import="javax.servlet.*" %>
<!-- header start-->

<jsp:include page="header.jsp" />
<!-- header ends-->



<!-- Body start -->

<div class="container-fluid" style="padding-top: 10px;">
	<div class="row">
		<div class="col-md-12 text-center">
			<div class="btn-group btn-group-lg rounded ">
				<a href="home.jsp" class="btn btn-sm btn-success "><img
					src="images/box (1).png"> <span class="badge">Dine in</span></a>
				<a href="TakeAway.jsp" class="btn btn-sm btn-success"><img
					src="images/coffee.png"> <span class="badge">Take away</span></a>
				<a href="Delivery.jsp" class="btn btn-sm btn-success"><img
					src="images/logistics-delivery-truck-and-clock (1).png"> <span
					class="badge">Delivery</span></a> <a href="orderplacement.jsp"
					class="btn btn-sm btn-success active"><img
					src="images/covered-food-tray-on-a-hand-of-hotel-room-service (1).png">
					<span class="badge">KOT</span></a>
			</div>
		</div>
	</div>
	<!-- form start -->
	<form action="${pageContext.request.contextPath }/GenerateBill" method="post">
		<div class="row">
			<%
     org.hibernate.Session session1 = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory()
		.openSession();
     Transaction transaction = session1.beginTransaction();
     Query query = session1.createQuery("FROM KotOrders");
     Iterator<KotOrders> it = query.iterate();
     while (it.hasNext()) {
       KotOrders kot = (KotOrders)it.next(); 
       String id = kot.getItemids();
 	   String qty = kot.getItemqty();
 	   String tno = kot.getTableno();
 	   String capname = kot.getCapname();
 	   float amount= kot.getAmount();
 	   int orderstatus = kot.getOrderstatus();
 	   int kotid = kot.getKotid();
 	   
 	   if(orderstatus!=3)
 	   {
 		   
 	 
     %>


			<!-- Table section -->
			<div class="col-md-4  col-12">

				<div class="card"
					style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); margin-bottom: 5px; margin-top: 10px;">

					<div class="card-header bg-dark text-light">

						<span class="badge badge-light">
							<%
						
                        if(tno.equals("null"))
                        {
                        	int deliveryid = kot.getDeliveryid();
        					Query query2 = session1.createQuery("FROM Delivery_order D WHERE D.deliveryid= "+deliveryid);
        					Iterator<Delivery_order> it1 = query2.iterate();
        					Delivery_order deli = (Delivery_order)it1.next();
        					if(deli.getDeliveryid()==deliveryid)
        					{
        						
        					
                        %><%=deli.getOrderType()%> <%}
                        }
                        else
                        {
                        	
                         
                        %> Table no:<%=tno%>
							<%} %>
						</span> <span class="badge badge-light">Captain Name:<%=capname%></span>



					</div>


					<div class="card-body bg-light">
						<%
					
					List<String> qtylist = Arrays.asList(qty.split(","));
					List<String> idlist = Arrays.asList(id.split(","));
					int size = qtylist.size();
					
					
					
					%>
						<table class="table table-striped">
							<thead>
								<tr>
									<th>item name</th>
									<th>item Qty</th>
								</tr>
							</thead>
							<tbody>

								<%
								 for(int i = 0;i<size;i++){
								%><tr>
									<%
								   Query query1 = session1.createQuery("FROM MenuItem where itemid ='"+idlist.get(i)+"'");
							     Iterator<MenuItem> it2 = query1.iterate();
							     MenuItem mi = (MenuItem)it2.next();
								%>
									<td><%=mi.getItemname() %></td>
									<td><%=qtylist.get(i) %></td>
								</tr>
								<%}
								     
								    %>


							</tbody>
						</table>


					</div>
					<div class="card-footer bg-light">

						<table class="table">
							<thead>
							</thead>
							<tbody>
								<tr>
									<td id="kotid"><%= kotid %></td>
									<td><button type="button"
											class="btn btn-success btn-sm  button1 TableGenerateBill"
											 name="btn1" id="button1"
											value="GenerateBill" data-toggle="modal" data-target="#GenerateBill">Generate Bill</button></td>
									<td><button type="submit"
											class="btn btn-secondary  btn-sm button1"
											 name="btn1" id="button1"
											value="ServeTable">Serve Table</button></td>
									<td><button type="submit"
											class="btn btn-info btn-sm  button1"
											 name="btn1" id="button1"
											value="SendKOT">Send KOT</button></td>
								</tr>
								<%
						               if(!tno.equals("null"))
				                        {

				        					
						               %>
								<tr>
								    <td id="kotid"><%= kotid %></td>
									<td><button type="button"
											class="btn btn-success btn-sm  TableOp TableShift"
											 name="TableOp" id="TableOp"
											value="ShiftTable" data-toggle="modal" data-target="#myModalShift">Shift
											Table</button></td>
									<td><button type="button"
											class="btn btn-secondary  btn-sm TableOp TableMerge"
											style="margin-right: 2px;"value="MergeTable" data-toggle="modal" data-target="#myModalMerge">Merge Table</button></td>
								</tr>
								<%
				                        }
						               %>
							</tbody>
							<span class="badge badge-light">total price:<%=amount %></span>





						</table>
					</div>

				</div>

















			</div>

			<%}}
     
     %>
             </div>
		<input type="hidden" value="0" id="kotorderid" name="kotorderid">
	</form>
</div>




<!-- Body end -->



<!-- Generate Bill Modal -->
<div class="modal fade" id="GenerateBill">
  <div class="modal-dialog">
    <div class="modal-content">


      <!-- Modal body -->
      <div class="modal-body">
       Do you want to proceed??
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
      <form action="GenerateBill.jsp" method="post">
        <button type="submit" class="btn btn-success">Yes</button>
        <button type="button" class="btn btn-danger" data-dismiss="modal">no</button>
        <input type="hidden" value=00 id="kotgeneratebillid" name="kotgeneratebillid">
       </form> 
      </div>

    </div>
  </div>
</div>

<!-- Generate Bill Modal End-->

<!--  Shift Table Modal -->
  <!-- The Modal -->
 <div class="modal fade" id="myModalShift">
  
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Shift Table</h4>
          <button type="button" class="close" data-dismiss="modal"></button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
         
        
          <!-- Main section start -->
  <div class="container-fluid" style="margin-top: 10px;">
   
	<div class="row">
		<div class="col-md-9" style="margin-top: 10px;">
			
			<div class="panel panel-primary">
	            <div class="panel-body">	        
	            <%  
	            org.hibernate.Session session2 = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory()
	    		.openSession();
	         Transaction tx = session2.beginTransaction();

					Query queryModal = session2.createQuery("FROM Tablecontent");
					Iterator<Tablecontent> itModal = queryModal.iterate();
					Iterator<Tablecontent> itModal2 = queryModal.iterate();
					int count = 0;
					
					
				     
				    
					
				%>
                
                <div class="col-md-12">
                    <div class="panel panel-default">
							<ul class="nav nav-tabs">
							<%
							while (itModal.hasNext()) {
						Tablecontent tc = (Tablecontent) itModal.next();
						String category = tc.getCategory();
						
						count++;
						%>
								
								<li class="nav-item rounded-top" style="background-color: #AED6F1; margin-right: 3px;"><a class="nav-link <% if(count==1){ %>active<%}%> text-dark"  role="tab" data-toggle="tab" href="#<%=category%>"><%=category%></a>
								</li>
								<%} %>
							</ul>


							<div class="tab-content">
                            <!-- Start Restaurant tab-->
                            	<%
                            	count=0;
							while (itModal2.hasNext()) {
						Tablecontent tc = (Tablecontent) itModal2.next();
						String category = tc.getCategory();
						int size = tc.getNo_table();
						int id = tc.getId();
						count++;
						%>
						
								 <div role="tabpanel" class="tab-pane <% if(count==1){ %>active<%} %>" id="<%=category%>" style="margin-top: 10px;">                           
                             <%
											Query query2 = session2.createQuery("FROM TableDesc");
												Iterator<TableDesc> it3 = query2.iterate();

												while (it3.hasNext()) {
													TableDesc td = (TableDesc) it3.next();
													
													int categoryid = td.getTable_type();
													String tablename = td.getTable_name();
													if (categoryid == id) {
													int tableid = td.getId();
													
													
													Query query3 = session2.createQuery("FROM KotOrders");
												     Iterator<KotOrders> it4 = query3.iterate();
												     
												     int countkot=0;
												     List<String> qtylist= null;
												     while (it4.hasNext()) {
												       KotOrders kot = (KotOrders)it4.next(); 
												       qtylist = Arrays.asList(kot.getTableno().split(","));
												       int size2 = qtylist.size();
												       for(int i = 0 ; i < qtylist.size();i++ )
												       {
												       if(tablename.equals(qtylist.get(i)) && kot.getOrderstatus()<3){
												    	   countkot++;
												  } 
												       }
												  
												     }
												     if(countkot>0)
												     {
												    	 
												     												  
												  %>
												  <button type="button" class="btn btn-warning disabled btn-lg" value="<%=tablename%>" style="height:100px;width: 100px; margin: 3px auto; "><%=tablename%></button>
										   <%}else{%>
										
										<button type="button" class="btn btn-info btn-lg tablebt" value="<%=tablename%>" style="height:100px;width: 100px; margin: 3px auto; "><%=tablename%></button>
										
										<%}
											}
												}
										%>
                            </div>
						
								<%} %>
                           
                       <%
							
								session2.close();
							%>
                          
                        </div>
                    </div>
                </div>
                </div>
       			</div>
			
			
			
		</div>
		
		<!-- Employee Section -->
			<div class="col-md-3 ">
				
         <div class="row" style="margin-top: 10px;">
		<div class="col-md-12">
		
		 
				</div>
	</div>
			</div>
	</div>
	
</div>
  
<!-- Main section end -->
          
         
     
         
         
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
        <form action="${pageContext.request.contextPath }/ShiftTable" method="post">
        <input type="hidden" value="a" id="tlist" name="tlist"> 
		<input type="hidden" value=00 id="kotshiftid" name="kotshiftid">
          <input type="submit" class="btn btn-success" id="btn2" name="btn2" value="Change Table"/>
           <input type="button" class="btn btn-danger" data-dismiss="modal" id="btn2" name="btn2" value="Close"/>
        </form> </div>
        
      </div>
    </div>
   
  </div> 
  
  <!--  Shift Table Modal end -->



<!-- footer start-->

<jsp:include page="footer.jsp" />
<!-- footer ends-->




	<!-- Merge Modal Start -->
   <!-- The Modal -->
  <div class="modal fade" id="myModalMerge">
  
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Merge Table</h4>
          <button type="button" class="close" data-dismiss="modal"></button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
         
        
          <!-- Main section start -->
  <div class="container-fluid" style="margin-top: 10px;">
   
	<div class="row">
		<div class="col-md-9" style="margin-top: 10px;">
			
			<div class="panel panel-primary">
	            <div class="panel-body">	        
	            <%

					Query queryModalMerge = session1.createQuery("FROM Tablecontent");
					Iterator<Tablecontent> itModalMerge = queryModalMerge.iterate();
					Iterator<Tablecontent> itModalMerge2 = queryModalMerge.iterate();
					int countMerge = 0;
					
					
				     
				    
					
				%>
                
                <div class="col-md-12">
                    <div class="panel panel-default">
							<ul class="nav nav-tabs">
							<%
							while (itModalMerge.hasNext()) {
						Tablecontent tc = (Tablecontent) itModalMerge.next();
						String category = tc.getCategory();
						
						countMerge++;
						%>
								
								<li class="nav-item rounded-top" style="background-color: #AED6F1; margin-right: 3px;"><a class="nav-link <% if(countMerge==1){ %>active<%}%> text-dark"  role="tab" data-toggle="tab" href="#<%=category+1%>"><%=category%></a>
								</li>
								<%} %>
							</ul>


							<div class="tab-content">
                            <!-- Start Restaurant tab-->
                            	<%
                            	countMerge=0;
							while (itModalMerge2.hasNext()) {
						Tablecontent tc = (Tablecontent) itModalMerge2.next();
						String category = tc.getCategory();
						int size = tc.getNo_table();
						int id = tc.getId();
						countMerge++;
						%>
						
								 <div role="tabpanel" class="tab-pane <% if(countMerge==1){ %>active<%} %>" id="<%=category+1%>" style="margin-top: 10px;">                           
                             <%
											Query query2 = session1.createQuery("FROM TableDesc");
												Iterator<TableDesc> it3 = query2.iterate();

												while (it3.hasNext()) {
													TableDesc td = (TableDesc) it3.next();
													
													int categoryid = td.getTable_type();
													String tablename = td.getTable_name();
													if (categoryid == id) {
													int tableid = td.getId();
													
													
													Query query3 = session1.createQuery("FROM KotOrders");
												     Iterator<KotOrders> it4 = query3.iterate();
												     int countkot=0;
												     List<String> qtylist= null;
												     while (it4.hasNext()) {
												       KotOrders kot = (KotOrders)it4.next(); 
												       qtylist = Arrays.asList(kot.getTableno().split(","));
												       int size2 = qtylist.size();
												       for(int i = 0 ; i < qtylist.size();i++ )
												       {
												       if(tablename.equals(qtylist.get(i)) && kot.getOrderstatus()<3){
												    	   countkot++;
												  } 
												       }
												  
												     }
												     if(countkot>0)
												     {
												    	 
												     												  
												  %>
												  <button type="button" class="btn btn-warning disabled btn-lg" value="<%=tablename%>" style="height:100px;width: 100px; margin: 3px auto; "><%=tablename%></button>
										   <%}else{%>
										
										<button type="button" class="btn btn-info btn-lg tablebtnMerge" value="<%=tablename%>" style="height:100px;width: 100px; margin: 3px auto; "><%=tablename%></button>
										
										<%}
											}
												}
										%>
                            </div>
						
								<%} %>
                           
                       <%
                       session1.close();
								
							%>
                          
                        </div>
                    </div>
                </div>
                </div>
       			</div>
			
			
			
		</div>
		
		<!-- Employee Section -->
			<div class="col-md-3 ">
				
         <div class="row" style="margin-top: 10px;">
		<div class="col-md-12">
		
		 
				</div>
	</div>
			</div>
	</div>
	
</div>
  
<!-- Main section end -->
          
         
     
         
         
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
        <form action="${pageContext.request.contextPath }/TableMerge" method="post">
        <input type="hidden" value="a" id="tlistMerge" name="tlistMerge"> 
		<input type="hidden" value=00 id="kotMergeid" name="kotMergeid">
          <input type="submit" class="btn btn-success" id="btn2" name="btn2" value="Merge Table"/>
           <input type="button" class="btn btn-danger" data-dismiss="modal" id="btn2" name="btn2" value="Close"/>
        </form> </div>
        
      </div>
    </div>
   
  </div>


<!-- Merge Modal End -->

