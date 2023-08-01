package model.com.restaurent;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="waiter")
public class Restaurantwaiter {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	
	private int Id;
	private String wid;
	private String waitername;
	private String tabletype;
	private String tableno;
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getWaiterid() {
		return wid;
	}
	public void setWaiterid(String wid) {
		this.wid = wid;
	}
	public String getWaitername() {
		return waitername;
	}
	public void setWaitername(String waitername) {
		this.waitername = waitername;
	}
	public String getTabletype() {
		return tabletype;
	}
	public void setTabletype(String tabletype) {
		this.tabletype = tabletype;
	}
	public String getTableno() {
		return tableno;
	}
	public void setTableno(String tableno) {
		this.tableno = tableno;
	}
	

}
