package entity;

import java.util.Scanner;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class HibernateUpdate {

	public static void main(String[] args) {
		Configuration configuration=new Configuration();
		configuration.configure("hibernate.cfg.xml");
		
		SessionFactory sessionFactory=configuration.buildSessionFactory();
		Session session=sessionFactory.openSession();
		
		Scanner scanner=new Scanner(System.in);
		System.out.println("Enter the product to be displayed Details");
		int productId=scanner.nextInt();
		
		Commodity product=(Commodity)session.get(Commodity.class,productId);
		
		if(product!=null)
		{
			System.out.println("current values");
			System.out.println(product.getProductId()+"::");
			System.out.println(product.getProductName()+"::");
			System.out.println(product.getPrice()+"::");
			System.out.println(product.getCategory()+"::");
			
			System.out.println("enter the new price");
			int price=scanner.nextInt();
			
			product.setPrice(price);
			Transaction transaction=session.beginTransaction();
			session.update(product);
			transaction.commit();
			
			System.out.println("product price updated");
			
		}
		else
		{
			System.out.println("product not available");
		}
		
	}

}
