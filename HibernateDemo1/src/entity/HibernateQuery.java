package entity;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;


public class HibernateQuery {

	public static void main(String[] args) {
		Configuration configuration=new Configuration();
		configuration.configure("hibernate.cfg.xml");
		
		SessionFactory sessionFactory=configuration.buildSessionFactory();
		Session session=sessionFactory.openSession();
		
		/*Query query =session.createQuery("from Product1");
				//query.setParameter("mycategory", "mobile");*/
		           
		   Criteria criteria=session.createCriteria(Commodity.class);
		   criteria.add(Restrictions.eq("category","Mobile"));
		   criteria.add(Restrictions.gt("price",10000));
		   
		   List<Commodity> listProduct1= (List<Commodity>) criteria.list();
	    
				//List<Product1> listProduct1= (List<Product1>) query.list();
				
				for(Commodity product1:listProduct1)
				{
					System.out.print(product1.getId()+"::");
					System.out.print(product1.getProduct()+"::");
					System.out.print(product1.getPrice()+"::");
					System.out.println(product1.getCategory()+"::");
					
				}
				
				session.close();
				sessionFactory.close();
				
		

	}

}
