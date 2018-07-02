package com.niit.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;

@Configuration
@EnableTransactionManagement
public class DBConfig {
	
	@Bean
	public DataSource getH2Datasource()
	{
		DriverManagerDataSource dataSource=new DriverManagerDataSource();
		
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/ShopperStop");
		dataSource.setUsername("sa");
		dataSource.setPassword("");
		System.out.println("DataSource object is created");
		
		return dataSource;
	}
	
	@Bean(name="sessionFactory")
	public SessionFactory getSessionFactory()
	{
		Properties properties=new Properties();
		properties.put("hibernate.hbm2ddl.auto","update");
		properties.put("hibernate.dialect","org.hibernate.dialect.H2Dialect");
		properties.put("show_sql","true");
		
		
		LocalSessionFactoryBuilder sessionFactoryBuilder=new LocalSessionFactoryBuilder(getH2Datasource());
		sessionFactoryBuilder.addProperties(properties);
		
		sessionFactoryBuilder.addAnnotatedClass(Category.class);
		sessionFactoryBuilder.addAnnotatedClass(Supplier.class);
		sessionFactoryBuilder.addAnnotatedClass(Product.class);
		
		
		SessionFactory sessionFactory=sessionFactoryBuilder.buildSessionFactory();
		
		System.out.println("SessionFactory object created");
		
		return sessionFactory;
		
	}
	
	@Bean
	public HibernateTransactionManager getHibernateTransactionManager( SessionFactory sessionFactory)
	{
		System.out.println("transaction object created");
		return new HibernateTransactionManager(sessionFactory);
	}
	

}
