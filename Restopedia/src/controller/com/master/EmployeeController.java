package controller.com.master;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.restopedia.Employee;
import sessionconfiq.HibernateUtil;


@WebServlet(description = "EmployeeController", urlPatterns = { "/EmployeeController" })

public class EmployeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public EmployeeController() {
        super();
       
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	String name=request.getParameter("ename");
	String email=request.getParameter("email");
	String contact=request.getParameter("contact");
	String address=request.getParameter("address");
	String designation=request.getParameter("designation");
	
	String btnEmployee = request.getParameter("type");
	HibernateUtil.createsession();
	
	if(btnEmployee.equals("Save")){
		try{
		HibernateUtil.insertEmployee(name, email, contact, address, designation);
		HibernateUtil.commitTransaction();
		HibernateUtil.destroysession();
		}
		catch(Exception e){
			System.out.println("Error in Insertion");
		}
	}
	
	
	if(btnEmployee.equals("Update")){
		try{
			int num=Integer.parseInt(request.getParameter("id"));
			HibernateUtil.updateEmployee(num, name, email, contact, address, designation);
			HibernateUtil.commitTransaction();
			HibernateUtil.destroysession();
		}
		catch(Exception e){
			System.out.println("Error in Updation");
		}
	}
	
	
	if(btnEmployee.equals("Delete")){
		try{
			int num=Integer.parseInt(request.getParameter("id"));
			HibernateUtil.deleteEmployee(num);
			HibernateUtil.commitTransaction();
			HibernateUtil.destroysession();
			
		}
		catch(Exception e){
			System.out.println("Error in Deletion");
		}
	}
	
	response.sendRedirect("Admin/adminpage/masters/employeemaster.jsp?id=2");
	
	
	/*try
	{
		SessionFactory sf=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		Session s1=sf.openSession();
		Employee es=new Employee();
		es.setEname(ename);
		es.setEmail(email);
		es.setContact(contact);
		es.setAddress(address);
		es.setDetails(details);
		s1.beginTransaction();
		s1.save(es);
		s1.getTransaction().commit();
		s1.close();
		request.setAttribute("activeTab", "Manage");
		response.sendRedirect("Admin/adminpage/masters/employeemaster.jsp?id=2");
		//request.setAttribute("activeTab", "Employee");
		//request.setAttribute("myname",1);
		 
		//RequestDispatcher rd = request.getRequestDispatcher("Admin/adminpage/masters/employeemaster.jsp");
		//rd.include(request, response);
		
	}
	catch(Exception se)
	{
		System.out.println(se.getMessage());
	}*/
	
	
	}

}
