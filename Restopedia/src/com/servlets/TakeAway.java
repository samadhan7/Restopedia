package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.restopedia.Delivery_order;

/**
 * Servlet implementation class TakeAway
 */
@WebServlet("/TakeAway")
public class TakeAway extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TakeAway() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstname = request.getParameter("fname");
		String lastname = request.getParameter("lname");
		String contact = request.getParameter("contact");
		String email = request.getParameter("email");
		String capname = request.getParameter("clist");
		
		Session session1 = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory()
				.openSession();
		Transaction transaction = session1.beginTransaction();
	    Delivery_order del = new Delivery_order();
	    del.setFirstname(firstname);
	    del.setLastname(lastname);
	    del.setContact(contact);
	    del.setEmail(email);
	    del.setCapname(capname);
	    del.setOrderType("Takeaway");
	    session1.save(del);
	    transaction.commit();
	    session1.close();
	    
	    response.sendRedirect("Client/order.jsp?clist="+capname+"&deliveryid="+del.getDeliveryid());
	}

}
