package model.com.master;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

@Entity
@Table(name="SalesReturn")

public class SalesReturn {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	
	 private int Id;
	 private String tablenumber;
	 private String waiternumber;
	 private String date;
	 private String returnitemname;
	 private String totalprice;
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getTablenumber() {
		return tablenumber;
	}
	public void setTablenumber(String tablenumber) {
		this.tablenumber = tablenumber;
	}
	public String getWaiternumber() {
		return waiternumber;
	}
	public void setWaiternumber(String waiternumber) {
		this.waiternumber = waiternumber;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getReturnitemname() {
		return returnitemname;
	}
	public void setReturnitemname(String returnitemname) {
		this.returnitemname = returnitemname;
	}
	public String getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(String totalprice) {
		this.totalprice = totalprice;
	}
	 
	 

}
