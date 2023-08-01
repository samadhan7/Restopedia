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
import org.hibernate.query.Query;

/**
 * Servlet implementation class ShiftTable
 */
@WebServlet("/ShiftTable")
public class ShiftTable extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String tno=request.getParameter("tlist");
		int id=Integer.parseInt(request.getParameter("kotshiftid"));
		System.out.println(id);
		
		Session session1 = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory()
				.openSession();
		     Transaction transaction = session1.beginTransaction();
		    Query query = session1.createQuery("UPDATE KotOrders set tableno = :tno WHERE kotid = :kotorder");
			query.setParameter("tno",tno);
			query.setParameter("kotorder",id);
			int result = query.executeUpdate();
			System.out.println(result);

	response.sendRedirect("Client/orderplacement.jsp");
	}

}
