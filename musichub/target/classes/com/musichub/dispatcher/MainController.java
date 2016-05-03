package com.musichub.dispatcher.MainController;
import javax.servlet.http.*;
import org.springframework.web.bind.annotation.RequestMapping;;
import org.springframework.web.method.support.ModelAndViewContainer;


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
public ModelAndView Index()
{
	ModelAndView mv=new ModelAndView("Login");
	mv.addObject("msg","Login");
	return mv;
}

@RequestMapping("/Register")
public ModelAndView Index()
{
	ModelAndView mv=new ModelAndView("Register");
	mv.addObject("msg","Register");
	return mv;
}
}
