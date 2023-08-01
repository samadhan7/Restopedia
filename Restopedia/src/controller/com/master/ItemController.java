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

import model.com.master.Item;
import sessionconfiq.HibernateUtil;


@WebServlet("/ItemController")
public class ItemController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ItemController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	  
	   
	   
	   String btnItem = request.getParameter("btnItem");
		
		
		if(btnItem.equals("Save")){
			try{
				 String itemname=request.getParameter("itemname");
				   int catid=Integer.parseInt(request.getParameter("itemtype"));
				   float price= Float.parseFloat(request.getParameter("price"));
				HibernateUtil.createsession();
				
			HibernateUtil.insertItem(itemname, catid, price);
			HibernateUtil.commitTransaction();
			HibernateUtil.destroysession();
			}
			catch(Exception e){
				System.out.println("Error in Insertion");
			}
			response.sendRedirect("Admin/adminpage/masters/itemmaster.jsp?id=2");
		}
		
		
		if(btnItem.equals("Update")){
			try{
				 String itemname=request.getParameter("itemname");
				   int catid=Integer.parseInt(request.getParameter("itemtype"));
				   float price= Float.parseFloat(request.getParameter("price"));
				HibernateUtil.createsession();
				int num=Integer.parseInt(request.getParameter("id"));
				HibernateUtil.updateItem(num, itemname, catid, price);
				HibernateUtil.commitTransaction();
				HibernateUtil.destroysession();
			}
			catch(Exception e){
				System.out.println("Error in Updation");
			}
			response.sendRedirect("Admin/adminpage/masters/itemmaster.jsp?id=2");
		}
		
		
		if(btnItem.equals("Delete")){
			try{
				HibernateUtil.createsession();
				int num=Integer.parseInt(request.getParameter("id"));
				HibernateUtil.deleteItem(num);
				HibernateUtil.commitTransaction();
				HibernateUtil.destroysession();
				
			}
			catch(Exception e){
				System.out.println("Error in Deletion");
			}
			response.sendRedirect("Admin/adminpage/masters/itemmaster.jsp?id=2");
		}
		
		

		 if(btnItem.equals("DeleteCat")){
				
				try{
					HibernateUtil.createsession();
					 int num=Integer.parseInt(request.getParameter("id"));
					 HibernateUtil.deleteItemCategory(num);
					 HibernateUtil.commitTransaction();
					 HibernateUtil.destroysession();
				}
				catch(Exception e){
					int num=Integer.parseInt(request.getParameter("id"));
					System.out.println("Error in Item Category Deletion" +num);
				}
				
				response.sendRedirect("Admin/adminpage/masters/itemmaster.jsp?id=3");
		}
		
		
	}


	   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String menubtn = request.getParameter("menubtn");
			
		
		if(menubtn.equals("Add Category")){
			try{
				HibernateUtil.createsession();
				String category=request.getParameter("menucategory");
				HibernateUtil.insertMenuCategory(category);
				HibernateUtil.commitTransaction();
				HibernateUtil.destroysession();
			}
			catch(Exception e){
				System.out.println("Error in Insertion");
			}
			response.sendRedirect("Admin/adminpage/masters/itemmaster.jsp?id=3");
		}
		
		
	}
   
	
}
