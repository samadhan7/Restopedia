package com.servlets;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.restopedia.KotOrders;



/**
 * Servlet implementation class OrderPlacement
 */
@WebServlet(description = "OrderPlacement", urlPatterns = { "/OrderPlacement" })
public class OrderPlacement extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderPlacement() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ids = request.getParameter("tid");
		String qty = request.getParameter("tquan");
		String tno = request.getParameter("tlist");
		String capno = request.getParameter("clist");
		float amount = Float.parseFloat(request.getParameter("plist"));
		int deliveryid=Integer.parseInt(request.getParameter("deliveryid"));
//		StringBuilder idbuffer = new StringBuilder();
//		StringBuilder qtybuffer = new StringBuilder();
//		boolean processedFirst = false;
//		
	    String idlist = ids.substring(1);
	    String qtylist = qty.substring(1);
//		
//		List<String> qtylist = Arrays.asList(qty.split(","));
//		List<String> idlist = Arrays.asList(ids.split(","));
//		for (String i : idlist.subList(1, idlist.size())) {
//			   if(processedFirst)
//		            idbuffer.append(",");
//		        idbuffer.append(i);
//		        processedFirst = true;
//		}
//		processedFirst = false;
//		for (String i : qtylist.subList(1, qtylist.size())) {
//			if(processedFirst)
//	            qtybuffer.append(",");
//	        qtybuffer.append(i);
//	        processedFirst = true;
//		}
		
	    org.hibernate.Session session1 = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory()
				.openSession();
		Transaction transaction = session1.beginTransaction();
		KotOrders kot = new KotOrders();
		kot.setItemids(idlist);
		kot.setItemqty(qtylist);
		kot.setTableno(tno);
		kot.setCapname(capno);
		kot.setOrderstatus(0);
		kot.setAmount(amount);
		kot.setDeliveryid(deliveryid);
		session1.save(kot);
	    session1.getTransaction().commit();
	    session1.close();
	    response.sendRedirect("Client/orderplacement.jsp");
	}

}
