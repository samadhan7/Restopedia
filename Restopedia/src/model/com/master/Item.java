package model.com.master;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;
import javax.persistence.Id;


@Entity
@Table(name="Item")
public class Item {
	
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)

	private int Id;
    private String itemnumber;
    private String itemname;
    private String itemtype;
    private String date;
    private String price;
    private String quantity;
    
	
    public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getItemnumber() {
		return itemnumber;
	}
	public void setItemnumber(String itemnumber) {
		this.itemnumber = itemnumber;
	}
	public String getItemname() {
		return itemname;
	}
	public void setItemname(String itemname) {
		this.itemname = itemname;
	}
	public String getItemtype() {
		return itemtype;
	}
	public void setItemtype(String tabletype) {
		this.itemtype = tabletype;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	
    
    
}
