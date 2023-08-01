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

import model.com.master.Supplier;
import sessionconfiq.HibernateUtil;


@WebServlet("/SupplierController")
public class SupplierController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public SupplierController() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//doGet(request, response);
		String sname=request.getParameter("sname");
		String email=request.getParameter("email");
		String contact=request.getParameter("contact");
		String address=request.getParameter("address");
		String details=request.getParameter("details");
		
		
		String btnEmployee = request.getParameter("type");
		HibernateUtil.createsession();
		
		if(btnEmployee.equals("Save")){
			try{
			HibernateUtil.insertSupplier(sname, email, contact, address, details);
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
				HibernateUtil.updateSupplier(num, sname, email, contact, address, details);
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
				HibernateUtil.deleteSupplier(num);
				HibernateUtil.commitTransaction();
				HibernateUtil.destroysession();
				
			}
			catch(Exception e){
				System.out.println("Error in Deletion");
			}
		}
		
		
		
		/*try
		{
			SessionFactory sf=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session s1=sf.openSession();
			Supplier s=new Supplier();
		     s.setSname(sname);
		     s.setEmail(email);
		     s.setContact(contact);
		     s.setAddress(address);
		     s.setDetails(details);
			s1.beginTransaction();
			s1.save(s);
			s1.getTransaction().commit();
			s1.close();
		}
		catch(Exception se)
		{
			System.out.println(se.getMessage());
		}*/
	}

}
