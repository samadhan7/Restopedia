package com.restopedia;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name ="table_desc")
public class TableDesc {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name ="tid")
	int id;
	@Column(name = "table_type")
	int table_type;
	@Column(name ="table_name")
	String table_name;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTable_type() {
		return table_type;
	}
	public void setTable_type(int table_type) {
		this.table_type = table_type;
	}
	public String getTable_name() {
		return table_name;
	}
	public void setTable_name(String table_name) {
		this.table_name = table_name;
	}
	
	
	
}
