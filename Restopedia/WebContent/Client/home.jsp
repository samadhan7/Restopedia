<%@ page import="java.util.*,com.restopedia.*, org.hibernate.*,org.hibernate.cfg.*"%>


<!-- header start-->
 
<jsp:include page="header.jsp" />
<!-- header ends-->


<!-- Main section start -->
  <div class="container-fluid" style="margin-top: 10px;">
   <form action="order.jsp" method="post">
       <div class="row">
         <img src="images/blue.png"> <span class="badge">Available</span>
          <img src="images/red.png"> <span class="badge">Selected</span>
          <img src="images/yellow.png"> <span class="badge">Occupied</span>
         <div class="col-md-12 text-center">
          <div class="btn-group btn-group-lg rounded ">
             <a href="home.jsp" class="btn btn-sm btn-success active"><img src="images/box (1).png"> <span class="badge">Dine in</span></a>
             <a href="TakeAway.jsp" class="btn btn-sm btn-success"><img src="images/coffee.png"> <span class="badge">Take away</span></a>
             <a href="Delivery.jsp" class="btn btn-sm btn-success"><img src="images/logistics-delivery-truck-and-clock (1).png"> <span class="badge">Delivery</span></a>
             <a href="orderplacement.jsp" class="btn btn-sm btn-success"><img src="images/covered-food-tray-on-a-hand-of-hotel-room-service (1).png"> <span class="badge">KOT</span></a>
             </div>
          </div>
       </div>
	<div class="row">
		<div class="col-md-9" style="margin-top: 10px;">
			
			<div class="panel panel-primary">
	            <div class="panel-body">	        
	            <%
					org.hibernate.Session session1 = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory()
							.openSession();
					Transaction transaction = session1.beginTransaction();

					Query query = session1.createQuery("FROM Tablecontent");
					Iterator<Tablecontent> it = query.iterate();
					Iterator<Tablecontent> it2 = query.iterate();
					int count = 0;
					
					
				     
				    
					
				%>
                
                <div class="col-md-12">
                    <div class="panel panel-default">
							<ul class="nav nav-tabs">
							<%
							while (it.hasNext()) {
						Tablecontent tc = (Tablecontent) it.next();
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
							while (it2.hasNext()) {
						Tablecontent tc = (Tablecontent) it2.next();
						String category = tc.getCategory();
						int size = tc.getNo_table();
						int id = tc.getId();
						count++;
						%>
						
								 <div role="tabpanel" class="tab-pane <% if(count==1){ %>active<%} %>" id="<%=category%>" style="margin-top: 10px;">                           
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
										
										<button type="button" class="btn btn-info btn-lg tablebt" value="<%=tablename%>" style="height:100px;width: 100px; margin: 3px auto; "><%=tablename%></button>
										
										<%}
											}
												}
										%>
                            </div>
						
								<%} %>
                           
                       
                          
                        </div>
                    </div>
                </div>
                </div>
       			</div>
			
			
			
		</div>
		
		<!-- Employee Section -->
			<div class="col-md-3 ">
				<div class="card scrollbar-dusty-grass"
					style="min-height: 400px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
					<div class="card-header bg-dark text-light">Captain list</div>
					<div class="card-body bg-light scroll scrollbar-ripe-malinka">
						<%
							org.hibernate.Session session2 = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory()
									.openSession();
							Transaction transaction1 = session2.beginTransaction();

							Query query3 = session2.createQuery("FROM Employee");
							Iterator<Employee> it4 = query3.iterate();

							while (it4.hasNext()) {
								Employee em = (Employee) it4.next();
								String empname = em.getName();
						%>
						<div class="list-group">
							<a  class="list-group-item list-group-item-action tableli" value="<%=empname%>" > <%=empname%>
							</a>
</div>
							<%
							}
								session2.close();
							%>
						
					</div>
				</div>
         <div class="row" style="margin-top: 10px;">
		<div class="col-md-12">
		<input type="hidden" value="a" id="tlist" name="tlist"> 
		<input type="hidden" value="b" id="clist" name="clist">
		<input type="hidden" value=00 id="deliveryid" name="deliveryid">
		 
			<button class="b1" type="submit" style ="height: 130px; width:100%;">Take Order</button>
		</div>
	</div>
			</div>
	</div>
	</form>
</div>
  
<!-- Main section end -->

<!-- footer start-->
 
<jsp:include page="footer.jsp" />
<!-- footer ends-->