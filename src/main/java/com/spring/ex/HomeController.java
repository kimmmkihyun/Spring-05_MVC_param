package com.spring.ex;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
		
	}
	
	@RequestMapping("person/input")
	public String input(HttpServletRequest request, Model model) {
		
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		
		System.out.println("name : " + name);
		System.out.println("age : " + age);
		
		model.addAttribute("name", name+"씨~");
		model.addAttribute("age", age+"세");
		
		return "person/result";
	}
	
	
	@RequestMapping("form")
	public String form() {
		
		return "person/personInput";
	}
	
	@RequestMapping(value = "person/join1" /*, method=RequestMethod.GET */  )  //get방식일 때만 실행된다, 안 쓰면 둘다 가능
	public String join1(HttpServletRequest request, Model model) {
		//System.out.println("join1()");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		
		model.addAttribute("Mname", name);
		
		return "person/personView1";
			
	}
	
	@RequestMapping("person/join2")
	public String join2(@RequestParam("id") String id,
						@RequestParam("pw") String pw,
						@RequestParam("name") String name,
						@RequestParam("addr") String addr,
						Model model
						) {
		
		System.out.println("id : "+id);
		System.out.println("pw : "+pw);
		System.out.println("name : "+name);
		System.out.println("addr : "+addr);
		
		Person per = new Person(id,pw,name,addr);
		model.addAttribute("per", per);
		
		return "person/personView2";
	}
	
	@RequestMapping("person/join3")
	public String join3(Person p) {
		/*
		Person p 를 넘겨주는 과정에서 다음과 같은 코드가 생략될 수 있다!!!! (Person p => command 객체)
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		Person p = new Person();
		p.setId(id);
		p.setPw(pw);
		p.setName(name);
		p.setAddr(addr);
		*/
		
		System.out.println("p.getId() : "+p.getId());
		return "person/personView3";
	}
	
	@RequestMapping("person/join4")
	public String join4(@ModelAttribute("abcd") Person p) {  //person 이 아닌 다른 별칭을 지정한다
		
		System.out.println("p.getId() : "+p.getId());
		return "person/personView4";
		
	}
	
	
	
	
	
	
}
