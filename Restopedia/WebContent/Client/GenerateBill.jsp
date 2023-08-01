<%@ page import="java.util.*,com.restopedia.*, org.hibernate.*,org.hibernate.cfg.*"%>
<%@page import="javax.servlet.*" %>

<!-- header start-->
 
<jsp:include page="header.jsp" />
<!-- header ends-->


<!-- Main section start -->
<div class="container-fluid">
<div class="row">

<div class="col-md-6 offset-md-3">
      <form action="${pageContext.request.contextPath }/GenerateBill" method="post">
       <div class="card" style="margin-top: 10px; height: 600px;">
          <div class="card-header bg-dark text-light">Billing</div>
          <%
            int kotGenid = Integer.parseInt(request.getParameter("kotgeneratebillid")); 
            org.hibernate.Session session1 = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory()
       		.openSession();
            Transaction transaction = session1.beginTransaction();
             Query query = session1.createQuery("FROM KotOrders WHERE kotid ="+kotGenid);
             Iterator<KotOrders> it = query.iterate();
            
              KotOrders kot = (KotOrders)it.next(); 
              String id = kot.getItemids();
        	   String qty = kot.getItemqty();
        	   String tno = kot.getTableno();
        	   String capname = kot.getCapname();
        	   float amount= kot.getAmount();
        	 
        	    List<String> qtylist = Arrays.asList(qty.split(","));
				List<String> idlist = Arrays.asList(id.split(","));
				int size = qtylist.size();
               
          
          %>
         
          <div class="card-body scroll scrollbar-ripe-malinka">
					 <div class="container-fluid">
					 <div class="row">
					   <div class="col-md-6">
						<h5>
							<p>
								<b><i>Restopedia</i></b>
							</p>
						</h5>
						<h6>
							<p>Kothrud,pune 431560</p>
							<p>Mob:9956748906</p>
							</h2>
							
					  </div>
					    
						<div class="col-md-6">
					    <input type="hidden" value= 00 id="datehidden" name="date">
                        <input type="hidden" value=00 id="timehidden" name="time">
						Date:<label id="date"></label>
						<br>
						Time:<label id="time"></label>
						<br>
							<script>
							date = new Date();
							 year = date.getFullYear();
							 month = date.getMonth() + 1;
							 day = date.getDate();
							 document.getElementById("date").innerHTML= "&nbsp;"+ day + "/" + month + "/" + year;
							 document.getElementById("datehidden").value=  day + "/" + month + "/" + year;
							 minutes= date.getMinutes();
							 hours= date.getHours();
							 hours=hours%12;
							 ampm= date.getHours() >= 12?'PM':'AM';
							 document.getElementById("timehidden").value=  hours + ":" + minutes + "  " + ampm;
							 document.getElementById("time").innerHTML= "&nbsp;"+ hours + ":" + minutes + "  " + ampm;
							</script>
						
						Table no:     &nbsp; &nbsp; &nbsp; &nbsp;  <span class="badge badge-success"><%=tno %></span>
						<br>
						Captain Name: &nbsp; &nbsp; &nbsp; &nbsp;  <span class="badge badge-success"><%=capname %></span>
						<br>
						</div>	
						</div>	
					</div>
					
					
					<hr>
					
					<div class="row">
					    <div class="col-md-12">
					     <table class="table">
					        <thead>
					    
					          <tr>
					          <th>Sr. No</th>
					          <th>Item Name</th>
					          <th>Quantity</th>
					          <th>Price</th>
					          </tr>
					        </thead>
					        <tbody>
					            <%
					            float total = 0.0f;
									 for(int i = 0;i<size;i++){
										 Query query1 = session1.createQuery("FROM MenuItem where itemid ='"+idlist.get(i)+"'");
									     Iterator<MenuItem> it2 = query1.iterate();
									     MenuItem mi = (MenuItem)it2.next();
									     total = total + mi.getItemprice();
					        %>
					           <tr>
					            <td><%=i+1 %></td>
					           <td><%=mi.getItemname() %></td>
									<td><%=qtylist.get(i) %></td>
					            <td><%=mi.getItemprice() %></td>
					           </tr>
					         <%}
					           session1.close();%>
					       </tbody>
					       
					      </table>
					      <hr>
					     </div>
					     
					     
					      
					      
					   
					
					</div>
					
					<div class="row">
					        
					        <div class="col-md-5 offset-md-7">
					         <strong>Total: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <%= total %> </strong>  
					         <br>
					         <% float tax = (total*18/100); %>
					         <strong>Tax:  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <%= tax %></strong>
					         <br>
					         <hr>
					         <% float grandtotal = total + tax; %>
					         <strong> Grand Total: &nbsp; &nbsp; <%= grandtotal %></strong>
					         <br>
					         <hr>
					        </div>
					     
					     
					     </div>
				</div>
				
          <div class="card-footer bg-dark text-light">
            <input type="hidden" value="<%=kotGenid %>" id="kotid" name="kotorderid">
           
            <input type="hidden" value=<%=capname %> id="capname" name="capname">
            <input type="hidden" value=<%=tno %> id="tableno" name="tableno">
            <input type="hidden" value=<%= total %> id="total" name="total">
            <input type="hidden" value=<%= tax %> id="tax" name="tax">
            <input type="hidden" value=<%= grandtotal %> id="grandtotal" name="grandtotal">
            <button type="submit" name="btn1" value="pay">Pay</button>
          </div>  
       </div>
       </form>
</div>




 </div>
 
 </div>

<!-- Main section end -->

<!-- footer start-->
 
<jsp:include page="footer.jsp" />
<!-- footer ends-->