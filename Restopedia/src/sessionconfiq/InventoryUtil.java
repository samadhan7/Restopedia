package sessionconfiq;

import java.util.Iterator;

import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import model.com.inventory.StockEntry;
import model.com.inventory.Wastage;

public class InventoryUtil {
	
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
	
    public static void commitTransaction() {
		
		session1.getTransaction().commit();
	}
	
	
	public static void destroysession() {
		session1.close();
	}
	
	//Stock EntryCRUD
	
public static void insertStock(String date,String name,String category,String price,String quantity,String address,String contact_no) {
		
		StockEntry s=new StockEntry();
    	s.setDate(date);
    	s.setName(name);
    	s.setCategory(category);
    	s.setPrice(price);
    	s.setQuantity(quantity);
    	s.setAddress(address);
    	s.setContact_no(contact_no);
    	session1.save(s);
	}
	
   public static void updateStock(int num,String name,String category,String price,String quantity, String address,String contact_no) {
		System.out.println(name);
	 StockEntry s=(StockEntry)session1.get(StockEntry.class,num);
    	
    	s.setName(name);
    	s.setCategory(category);
    	s.setPrice(price);
    	s.setQuantity(quantity);
    	s.setAddress(address);
    	s.setContact_no(contact_no);
    	session1.save(s);
	}
   
   public static void deleteStock(int num){
	   
	   StockEntry s=(StockEntry)session1.get(StockEntry.class,num);
	   session1.delete(s);
   }

	
	//Wastage CRUD Operation
   
   
   public static void insertWastage(String date,String name,String price,String reason,String quantity) {
		
		Wastage w=new Wastage();
		w.setDate(date);
   	w.setName(name);
   	w.setPrice(price);
   	w.setReason(reason);
   	w.setQuantity(quantity);
   	
   	session1.save(w);
	}
	
  public static void updateWastage(int num,String name,String price,String reason,String quantity) {
		
	 Wastage w=(Wastage)session1.get(Wastage.class,num);
   	w.setName(name);
   	w.setPrice(price);
   	w.setReason(reason);
   	w.setQuantity(quantity);
   	
   	
   	session1.save(w);
	}
  
  public static void deleteWastage(int num){
	   
	   Wastage w=(Wastage)session1.get(Wastage.class,num);
	   session1.delete(w);
  }
	
   
	
	//

}
