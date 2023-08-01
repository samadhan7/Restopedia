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

import model.com.master.Department;
import sessionconfiq.HibernateUtil;


@WebServlet("/DepartmentController")
public class DepartmentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public DepartmentController() {
        super();
       
    }
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		String departmentnumber=request.getParameter("departmentnumber");
		String departmentname=request.getParameter("departmentname");
		String noofemployee=request.getParameter("noofemployee");
		String description=request.getParameter("description");
		
		String btnDepartment = request.getParameter("type");
		HibernateUtil.createsession();
		
		if(btnDepartment.equals("Save")){
			try{
			HibernateUtil.insertDepartment(departmentnumber, departmentname, noofemployee, description);
			HibernateUtil.commitTransaction();
			HibernateUtil.destroysession();
			}
			catch(Exception e){
				System.out.println("Error in Insertion");
			}
		}
		
		
		if(btnDepartment.equals("Update")){
			try{
				int num=Integer.parseInt(request.getParameter("id"));
				HibernateUtil.updateDepartment(num, departmentnumber, departmentname, noofemployee, description);
				HibernateUtil.commitTransaction();
				HibernateUtil.destroysession();
			}
			catch(Exception e){
				System.out.println("Error in Updation");
			}
		}
		
		
		if(btnDepartment.equals("Delete")){
			try{
				int num=Integer.parseInt(request.getParameter("id"));
				HibernateUtil.deleteDepartment(num);
				HibernateUtil.commitTransaction();
				HibernateUtil.destroysession();
				
			}
			catch(Exception e){
				System.out.println("Error in Deletion");
			}
		}
		
	}

}
