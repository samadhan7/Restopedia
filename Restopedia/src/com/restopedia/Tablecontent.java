package com.restopedia;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name ="table_category")
public class Tablecontent {

	@Id
	@Column(name = "TCID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	@Column(name ="Category")
	String category;
	@Column(name="no_of_table")
	int no_table;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getNo_table() {
		return no_table;
	}
	public void setNo_table(int no_table) {
		this.no_table = no_table;
	}
	
	
}
