package model.com.master;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="Recipe")

public class Recipe 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int Id;
	private String recipename;
	private String categories;
	private String ingredients;
	private String recipedirection;
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getRecipename() {
		return recipename;
	}
	public void setRecipename(String recipename) {
		this.recipename = recipename;
	}
	public String getCategories() {
		return categories;
	}
	public void setCategories(String categories) {
		this.categories = categories;
	}
	public String getIngredients() {
		return ingredients;
	}
	public void setIngredients(String ingredients) {
		this.ingredients = ingredients;
	}
	public String getRecipedirection() {
		return recipedirection;
	}
	public void setRecipedirection(String recipedirection) {
		this.recipedirection = recipedirection;
	}

}
