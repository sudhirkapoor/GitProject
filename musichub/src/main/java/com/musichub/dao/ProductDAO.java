package com.musichub.dao;

import org.springframework.beans.factory.annotation.*;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.hql.internal.ast.util.SyntheticAndFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.musichub.model.Product;

@Repository

public class ProductDAO implements ProductDAOImplement {

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Autowired
	public ProductDAO(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	// Method to CREATE an product in the database
	public Integer addProduct(int pid, String name, String brand, String description, int price, String catagory) {
		System.out.println("hi");
		Session session = sessionFactory.getCurrentSession();
		// TODO Auto-generated method stub
		Product p = new Product();
		p.setid(pid);
		p.setname(name);
		p.setbrand(brand);
		p.setprice(price);
		p.setdescription(description);
		p.setcatagory(catagory);

		int i = (Integer) session.save(p);

		return i;

	}

	// Method to READ all the Products
	public List<Product> getProductDetails() {
		System.out.println("hi");
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Product");
		List<Product> productlist = query.list();
		return productlist;

	}

	public void addProduct(Product p) {
		System.out.println("hi");
		Session session = sessionFactory.getCurrentSession();
		Product product = p;
		int i = (Integer) session.save(p);
	}

	public void updateProduct(Product p) {
		Session session = sessionFactory.getCurrentSession();
		session.update(p);
	}

	public Product getProductById(int id) {
		System.out.println("in get id "+id);
		Session session = sessionFactory.getCurrentSession();
		Product p = (Product) session.load(Product.class, new Integer(id));
		return p;
		
	}

	public void removeProduct(int id) {
		Session session = sessionFactory.getCurrentSession();
		Product p = (Product) session.load(Product.class, new Integer(id));
		if (null != p) {
			session.delete(p);
		}
	}

}
