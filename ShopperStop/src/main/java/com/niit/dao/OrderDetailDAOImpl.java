package com.niit.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.OrderDetail;

@Repository("orderDetailDAO")// for creating bean
@Transactional
public class OrderDetailDAOImpl implements OrderDetailDAO{
	@Autowired
	 SessionFactory sessionFactory;
	
	public boolean insertOrderDetail(OrderDetail orderDetail)
	{
		try
		{
			sessionFactory.getCurrentSession().save(orderDetail);
			return true;
			
		}
		catch(Exception e)
		{
			return false;
		}
	}
	
	
	
	   public boolean updateOrderDetail(String username) {
		try
	      {
	    	Session session=sessionFactory.openSession();
	    	Query query=session.createQuery("update CartItem set status='p' where username=:myusername and status='NA' ");
			query.setParameter("myusername", username);
	    	int row_eff=query.executeUpdate();
	    	if(row_eff>0)
	    		 return true;
	    	else
	    		 return false;
	      }
	      catch(Exception e)
	      {
	    	  return false;
	      }
	    	
	}





	public boolean updateOrderDetail(OrderDetail orderDetail) {
		// TODO Auto-generated method stub
		return false;
	}
	}


