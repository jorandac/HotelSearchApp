package com.hotelsearchapp.hotelsearch;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hotelsearchapp.hotelsearch.dao.HotelDao;
import com.hotelsearchapp.hotelsearch.entity.Hotel;

@Controller
public class HotelController {
	
	@Autowired
	private HotelDao hoteldao; 
	
	@RequestMapping("/")
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView("homepage");
		mav.addObject("cities", hoteldao.findAll()); 
		return mav; 
	}
	
	@RequestMapping("/homepage")
	public ModelAndView homepage() {
		ModelAndView mav = new ModelAndView("homepage"); 
		mav.addObject("cities", hoteldao.findAll());
		return mav; 

	}
	
	@PostMapping("/results") 
	public ModelAndView showHotelResults(@RequestParam("city") String city) {
		List<Hotel> hotels = hoteldao.findByCity(city);
		return new ModelAndView("results", "hotels", hotels);
	}
	
}
