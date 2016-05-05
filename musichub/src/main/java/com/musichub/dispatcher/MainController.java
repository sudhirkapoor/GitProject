package com.musichub.dispatcher;
import java.util.*;
import javax.servlet.http.*;

import org.springframework.web.method.support.ModelAndViewContainer;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;
import com.musichub.model.Product;
import com.musichub.service.*;

@Controller
public class MainController {
	
@RequestMapping("/")
public ModelAndView Index()
{
	//System.out.println("In Controller");
	ModelAndView mv=new ModelAndView("index");
	mv.addObject("msg","Welcome");
	return mv;	
}

@RequestMapping("/Login")
public ModelAndView Login_Method()
{
	ModelAndView mv=new ModelAndView("Login");
	mv.addObject("msg","Login");
	return mv;
}

@RequestMapping("/Register")
public ModelAndView Register_Method()
{
	ModelAndView mv=new ModelAndView("Register");
	mv.addObject("msg","Register method is called");
	return mv;
}


@RequestMapping("/Product/{pname}")
public ModelAndView Product_Method2(@PathVariable("pname") String Prodname)
{
	
	
	ModelAndView mv=new ModelAndView("Product");
	mv.addObject("Productdata",Prodname);
	//System.out.println(Prodname);
	return mv;
}



@RequestMapping("/Product")
public ModelAndView Product_Method()
{
	ProductService service=new ProductService();
	List<Product> list=service.getProducts();
	String json = new Gson().toJson(list );
	 
	ModelAndView mv=new ModelAndView("Product");
	mv.addObject("data1",json);
	return mv;
}

@RequestMapping("/Aboutus")
public ModelAndView About_Method()
{
	ModelAndView mv=new ModelAndView("AboutUs");
	mv.addObject("msg","Register");
	return mv;
}

@RequestMapping("/ProductDetails")
public ModelAndView ProductDetails_Method()
{
	ModelAndView mv=new ModelAndView("ProductDetails");
	mv.addObject("msg","Register");
	return mv;
}

}
