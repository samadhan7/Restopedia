package sessionconfiq;

import java.util.Iterator;

import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import model.com.master.Customer;
import model.com.restaurent.Restaurantcguest;
import model.com.restaurent.Restaurantchainfile;
import model.com.restaurent.Restaurantuserfile;
import model.com.restaurent.Restaurantwaiter;

public class RestaurantUtil {
	
	static org.hibernate.Session session1;
	static Transaction transaction ;
	
	public static void createsession() {
		session1 = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory()
				.openSession();
		transaction= session1.beginTransaction();
	}
	
	
	
	public static Iterator GetDetail(String q) {
		Query query = session1.createQuery(q);
		Iterator it = query.iterate();

		return it;
	}
	
	//CURD for chainfile
	
	public static void insertChainfile(String name,String date,String address,String city,String salestax,String expendituretax,String servicecharge,String backup)
	{
		Restaurantchainfile rc=new Restaurantchainfile();
		rc.setRestaurantname(name);
		rc.setDate(date);
		rc.setAddress(address);
		rc.setCity(city);
		rc.setSalestax(salestax);
		rc.setExpendituretax(expendituretax);
		rc.setServicecharge(servicecharge);
		rc.setBackup(backup);		
		session1.save(rc);
	}
	
	public static void updateChainfile(int num,String name,String date,String address,String city,String salestax,String expendituretax,String servicecharge,String backup )
	{
		Restaurantchainfile rc=(Restaurantchainfile)session1.get(Restaurantchainfile.class,num);
		rc.setRestaurantname(name);
		rc.setDate(date);
		rc.setAddress(address);
		rc.setCity(city);
		rc.setSalestax(salestax);
		rc.setExpendituretax(expendituretax);
		rc.setServicecharge(servicecharge);
		rc.setBackup(backup);
		session1.save(rc);
	}
	
	 public static void deleteChainfile(int num){
		   
		 Restaurantchainfile rc=(Restaurantchainfile)session1.get(Restaurantchainfile.class,num);
		   session1.delete(rc);
	   }	
	 
	 
	 //CURD for userfile
	 
	 public static void insertUserfile(String uname,String pass)
	 {
		 Restaurantuserfile uf=new Restaurantuserfile();
		 uf.setUsername(uname);
		 uf.setPassword(pass);
		 session1.save(uf);
	 }
	 
	 public static void updateUserfile(int num,String uname,String pass)
	 {
		 Restaurantuserfile uf=(Restaurantuserfile)session1.get(Restaurantuserfile.class,num);
		 uf.setUsername(uname);
		 uf.setPassword(pass);
		 session1.save(uf);
	 }
	 
	 public static void deleteUserfile(int num){
		   
		 Restaurantuserfile uf=(Restaurantuserfile)session1.get(Restaurantuserfile.class,num);
		   session1.delete(uf);
	   }	
	
	 
	 //CURD for complementory
	 
	 public static void insertComplementory(String code,String cname)
	 {
		 Restaurantcguest cg=new Restaurantcguest();
		 cg.setCode(code);
		 cg.setName(cname);
		 session1.save(cg);
	 }
	 
	 public static void updateComplementory(int num,String code,String cname)
	 {
		 Restaurantcguest cg=(Restaurantcguest)session1.get(Restaurantcguest.class,num);
		 cg.setCode(code);
		 cg.setName(cname);
		 session1.save(cg);
	 }
	 
	 public static void deleteComplementory(int num){
		   
		 Restaurantcguest cg=(Restaurantcguest)session1.get(Restaurantcguest.class,num);
		   session1.delete(cg);
	   }	
	
	 //CURD for waiter
	 
	 public static void insertWaiter(String wid,String wname,String tabletype,String tableno) {
			
		 Restaurantwaiter w=new Restaurantwaiter();
	    	w.setWaiterid(wid);
	    	w.setWaitername(wname);
	    	w.setTabletype(tabletype);
	    	w.setTableno(tableno);
	    	
	    	session1.save(w);
		}
	 
	 public static void updateWaiter(int num,String wid,String wname,String tabletype,String tableno) {
			
		 Restaurantwaiter w=(Restaurantwaiter)session1.get(Restaurantwaiter.class,num);
	    	
		w.setWaiterid(wid);
		w.setWaitername(wname);
		w.setTabletype(tabletype);
		w.setTableno(tableno);
	 	
	    	session1.save(w);
		}
	 
	 public static void deleteWaiter(int num){
		   
		 Restaurantwaiter w=(Restaurantwaiter)session1.get(Restaurantwaiter.class,num);
		   session1.delete(w);
	   }
public static void commitTransaction() {
		
		session1.getTransaction().commit();
	}
	
	
	public static void destroysession() {
		session1.close();
	}

}
