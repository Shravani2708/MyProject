package entity;


import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Commodity")

public class Product1 {
	@Id
	int product1Id;
	String product1Name;
	int price;
	public int getProduct1Id() {
		return product1Id;
	}
	public void setProduct1Id(int product1Id) {
		this.product1Id = product1Id;
	}
	public String getProduct1Name() {
		return product1Name;
	}
	public void setProduct1Name(String product1Name) {
		this.product1Name = product1Name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	

}
