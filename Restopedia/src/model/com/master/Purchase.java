package model.com.master;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

@Entity
@Table(name="purchase")
public class Purchase {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)

private int id;
private String suppliername;
private String date;
private String invoice;
private String grandTotal;

private String item;
private String quantity;
private String rate;

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getSuppliername() {
	return suppliername;
}
public void setSuppliername(String suppliername) {
	this.suppliername = suppliername;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public String getInvoice() {
	return invoice;
}
public void setInvoice(String invoice) {
	this.invoice = invoice;
}
public String getGrandTotal() {
	return grandTotal;
}
public void setGrandTotal(String grandTotal) {
	this.grandTotal = grandTotal;
}

public String getItem() {
	return item;
}
public void setItem(String item) {
	this.item = item;
}
public String getQuantity() {
	return quantity;
}
public void setQuantity(String quantity) {
	this.quantity = quantity;
}
public String getRate() {
	return rate;
}
public void setRate(String rate) {
	this.rate = rate;
}



}
