package entity;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import entity.Commodity;

public class HibernateUtil {

	public static void main(String[] args) {
		
		Configuration configuration=new Configuration();
		configuration.configure("hibernate.cfg.xml");
		
		SessionFactory sessionFactory=configuration.buildSessionFactory();
		Session session=sessionFactory.openSession();
		
		Commodity product1=new Commodity();
		
		product1.setProductId(1003);
		product1.setProductname("HP");
		product1.setPrice(39000);
		product1.setCategory("Laptop");
		
		Transaction transaction=session.beginTransaction();
		session.save(product1);
		transaction.commit();
		session.close();
		
		System.out.println("Product object is saved");

	}

}
