package com.servlets;

import java.io.IOException;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.restopedia.KotOrders;

/**
 * Servlet implementation class TableMerge
 */
@WebServlet("/TableMerge")
public class TableMerge extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TableMerge() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tno = request.getParameter("tlistMerge");
        int tid = Integer.parseInt(request.getParameter("kotMergeid"));
		Session session1 = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory()
				.openSession();
		
		     Query queryfind = session1.createQuery("FROM KotOrders WHERE kotid  = :id");
		     queryfind.setParameter("id",tid);
		     Iterator<KotOrders> it = queryfind.iterate();
		     KotOrders kot = it.next();
		     String tablelist = kot.getTableno(); 
		     String table = tablelist + "," + tno;
		
		
		
		
		     Transaction transaction = session1.beginTransaction();
		    Query query = session1.createQuery("UPDATE KotOrders set tableno = :tno WHERE kotid = :kotorder");
			query.setParameter("tno",table);
			query.setParameter("kotorder",tid);
			int result = query.executeUpdate();
			System.out.println(result);

	response.sendRedirect("Client/orderplacement.jsp");
	}

}
