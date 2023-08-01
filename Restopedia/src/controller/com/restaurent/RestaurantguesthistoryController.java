package controller.com.restaurent;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import model.com.restaurent.Restaurantguesthistory;


@WebServlet("/RestaurantguesthistoryController")
public class RestaurantguesthistoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public RestaurantguesthistoryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    String guestid=request.getParameter("guestid");
	    String membercode=request.getParameter("membercode");
		String guestname=request.getParameter("gname");
		String address=request.getParameter("gaddress");
		String city=request.getParameter("gcity");
		String pincode=request.getParameter("pincode");
		String profession=request.getParameter("profession");
		String spousename=request.getParameter("spousename");
		String bdate=request.getParameter("bdate");
		String mobileno=request.getParameter("mobileno");
		String email=request.getParameter("email");
		String like=request.getParameter("like");
		String dislike=request.getParameter("dislike");
		
		try
		{
			SessionFactory sf=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session s1=sf.openSession();
			Restaurantguesthistory rgh=new Restaurantguesthistory();
			rgh.setGuestid(guestid);
			rgh.setMembercode(membercode);
			rgh.setGuestname(guestname);
			rgh.setAddress(address);
			rgh.setCity(city);
			rgh.setPincode(pincode);
			rgh.setProfession(profession);
			rgh.setSpousename(spousename);
			rgh.setBdate(bdate);
			rgh.setMobileno(mobileno);
			rgh.setEmail(email);
			rgh.setLike(like);
			rgh.setDislike(dislike);
			s1.beginTransaction();
			s1.save(rgh);
			s1.getTransaction().commit();
			s1.close();
			
		}
		catch(Exception se)
		{
			System.out.println("error"+se.getMessage());
		}
		response.sendRedirect("Admin/adminpage/restaurant/restaurantmaintenance.jsp");
	}

}
