package controller.com.restaurent;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sessionconfiq.RestaurantUtil;


/**
 * Servlet implementation class restaurantchainfilecontroller
 */
@WebServlet("/Restaurantchainfilecontroller")
public class Restaurantchainfilecontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Restaurantchainfilecontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String name=request.getParameter("name");
		String date=request.getParameter("date");
		String address=request.getParameter("address");
		String city=request.getParameter("city");
		String salestax=request.getParameter("salestax");
		String expendituretax=request.getParameter("expendituretax");
		 
		String servicecharge=request.getParameter("servicecharge");
		String backup=request.getParameter("backup");

		
	//System.out.println(price);
		
String btnchainfile=request.getParameter("btnchainfile");
		
		
RestaurantUtil.createsession();
		
		
		 if(btnchainfile.equals("Save"))
			{
		     try
			    {
		    	 RestaurantUtil.insertChainfile(name,date, address, city, salestax,expendituretax, servicecharge,backup);
			    	//System.out.println(name+address);
		    	 RestaurantUtil.commitTransaction();
		    	 RestaurantUtil.destroysession();
			    }
			    catch(Exception e)
			    {
			    	System.out.println("Error in Insertion");
			    }
		     response.sendRedirect("Admin/adminpage/restaurant/restaurantmaintenance.jsp?id=1");
		
			}
		else if(btnchainfile.equals("Update"))
		 	{
			 try{
				 int num=Integer.parseInt(request.getParameter("id"));
				// System.out.println(price);
				 RestaurantUtil.updateChainfile(num,name,date, address, city, salestax,expendituretax, servicecharge,backup );
				 RestaurantUtil.commitTransaction();
				 RestaurantUtil.destroysession();
		 		}
			 catch(Exception e)
			    {
			    	System.out.println("Error in Updatation");
			    }
			  response.sendRedirect("Admin/adminpage/restaurant/restaurantmaintenance.jsp?id=1");
		
			}
		 else if(btnchainfile.equals("Delete"))
			 {
				 try{
					 int num=Integer.parseInt(request.getParameter("a"));
					 RestaurantUtil.deleteChainfile(num);
					 RestaurantUtil.commitTransaction();
					 RestaurantUtil.destroysession();
				 }
				 catch(Exception e)
				 {
					 System.out.println("Error in Deletion");	 
				 }
				 response.sendRedirect("Admin/adminpage/restaurant/restaurantmaintenance.jsp?id=1");
			 }
		
	}

	}

