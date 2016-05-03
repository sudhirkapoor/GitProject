package com.musichub.dispatcher;
import javax.servlet.http.*;

import org.springframework.web.method.support.ModelAndViewContainer;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
@RequestMapping("/")
public ModelAndView Index()
{
	System.out.println("In Controller");
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
	mv.addObject("msg","Register");
	return mv;
}
}
