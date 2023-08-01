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


import sessionconfiq.HibernateUtil;


@WebServlet("/TableController")
public class TableController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public TableController() {
        super();
       
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		
//		String tableno=request.getParameter("tableno");
//		String sizeoftable=request.getParameter("sizeoftable");
//		String tabletype=request.getParameter("tabletype");
		
		
		String tablebtn=request.getParameter("tablebtn");
	
		
		
		
		if(tablebtn.equals("Add Category"))
		{
			String category=request.getParameter("tablecategory");
			int nooftable=Integer.parseInt(request.getParameter("nooftable"));
			 try
			    {
				 	HibernateUtil.createsession();
			    	HibernateUtil.insertTableCategory(category, nooftable);
			    	HibernateUtil.commitTransaction();
			    	HibernateUtil.destroysession();
			    }
			    catch(Exception e)
			    {
			    	System.out.println("Error in Insertion");
			    }
			 response.sendRedirect("Admin/adminpage/masters/tablemaster.jsp?id=3");
		}
		
		else if(tablebtn.equals("Add Table")) {
			int tableno=Integer.parseInt(request.getParameter("tableno"));
			int catid =Integer.parseInt(request.getParameter("tabletype"));
			String tablealias=request.getParameter("tablealias");
			 try
			    {
				 	
				 	for(int i=1;i<=tableno;i++) {
				 	HibernateUtil.createsession();
			    	HibernateUtil.insertTable(catid,tablealias+i);
			    	HibernateUtil.commitTransaction();
			    	HibernateUtil.destroysession();
				 	}
			    	
			    }
			    catch(Exception e)
			    {
			    	System.out.println("Error in Insertion");
			    }
			 
			 response.sendRedirect("Admin/adminpage/masters/tablemaster.jsp?id=2");
		}
		
		else if(tablebtn.equals("Update")) {
		
			 try{
				 int num=Integer.parseInt(request.getParameter("id"));
				 String tablename=request.getParameter("tablename");
				 int catid =Integer.parseInt(request.getParameter("tabletype"));
				 
				 HibernateUtil.createsession();
				 HibernateUtil.updateTable(num,tablename , catid);
				 HibernateUtil.commitTransaction();
				 HibernateUtil.destroysession();
		 		}
			 catch(Exception e)
			    {
			    	System.out.println("Error in Updatation");
			    }
		
			 response.sendRedirect("Admin/adminpage/masters/tablemaster.jsp?id=2");
		}
		


				
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		
		String tablebtn=request.getParameter("type");
		
		
     if(tablebtn.equals("Delete")){
			
			try{
				HibernateUtil.createsession();
				 int num=Integer.parseInt(request.getParameter("id"));
				 HibernateUtil.deleteTable(num);
				 HibernateUtil.commitTransaction();
				 HibernateUtil.destroysession();
			}
			catch(Exception e){
				int num=Integer.parseInt(request.getParameter("id"));
				System.out.println("Error in table Deletion" +num);
			}
			
			 response.sendRedirect("Admin/adminpage/masters/tablemaster.jsp?id=2");
	}
     
     if(tablebtn.equals("DeleteCat")){
			
			try{
				HibernateUtil.createsession();
				 int num=Integer.parseInt(request.getParameter("id"));
				 HibernateUtil.deleteTableCategory(num);
				 HibernateUtil.commitTransaction();
				 HibernateUtil.destroysession();
			}
			catch(Exception e){
				int num=Integer.parseInt(request.getParameter("id"));
				System.out.println("Error in table Deletion" +num);
			}
			
			response.sendRedirect("Admin/adminpage/masters/tablemaster.jsp?id=3");
	}
     
     

  }
	
}
