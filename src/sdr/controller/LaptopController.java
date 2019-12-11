package sdr.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.parser.*;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import sdr.frame.Service;
import sdr.vo.ProductVO;

@Controller
public class LaptopController {
/*
 * 
 * LaptopController는 메인 페이지, 상세 페이지를 담당한다.
 * 
 * 
 * 
 * 
 * */
	
	@Resource(name="productservice")
	Service<String, ProductVO> service;
	
	@RequestMapping("/main.mc")
	public ModelAndView main() {
		System.out.println("hahah");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		return mv;
	}
	/*
	@RequestMapping("/productdetail.mc")
	public ModelAndView login(HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		mv.addObject(attributeValue);
		mv.addObject("center", "productdetail");
		mv.setViewName("main");
		return mv;
	}
	*/
	@RequestMapping("/login.mc")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("center", "login");
		mv.setViewName("main");
		return mv;
	}

	
	
	@RequestMapping("/getBrand.mc")
	@ResponseBody
	public void getBrand(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/json;charset=UTF-8");
		System.out.println("start");
		String json = request.getParameter("data1");
		
		JSONParser parser  = new JSONParser();
		JSONObject jsonObject = null;
		
		System.out.println(json);
		System.out.println("end");
        
		
		try {
			jsonObject = (JSONObject) parser.parse(json);
			System.out.println("parsed value is" + jsonObject);
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
        
        String brand = (String) jsonObject.get("0");
String temp = (String) jsonObject.get("1");
	int price = Integer.parseInt(temp);

        String cpu = (String) jsonObject.get("2");
        String memory = (String) jsonObject.get("3");
        String disk = (String) jsonObject.get("4");
        String monitor = (String) jsonObject.get("5");

        System.out.println(brand);
        System.out.println(price);
        System.out.println(cpu);
        System.out.println(memory);
        System.out.println(disk);
        System.out.println(monitor);

		System.out.println(json);
		System.out.println("hey");
		
		PrintWriter out = response.getWriter();
		ArrayList<ProductVO> list = null;
		System.out.println("getBrand executed");
		try {
			list = service.getBrand(brand);
		} catch (Exception e) {
			e.printStackTrace();
		}
		JSONArray ja = new JSONArray();

		for(ProductVO u:list) {
			System.out.println("for loop executed");
			JSONObject jo = new JSONObject();
			jo.put("prodname", u.getProdname());
			jo.put("brand", u.getBrand());
			jo.put("price", u.getPrice());
			jo.put("speccpu", u.getSpeccpu());
			jo.put("specram", u.getSpecram());
			jo.put("specstorage", u.getSpecstorage());
			jo.put("specsize", u.getSpecsize());
			jo.put("specimg", u.getSpecimg());
			jo.put("stock", u.getStock());
			System.out.println(u);
			if(brand.equals(u.getBrand()) && price > u.getPrice() && cpu.equals(u.getSpeccpu()) && memory.equals(u.getSpecram())
					&& disk.equals(u.getSpecstorage()) && monitor.equals(u.getSpecsize())) {
				ja.add(jo);
				System.out.println("existed!!!!!!");
			}
		}
		out.print(ja.toJSONString());
		out.close();
	}
	
	@RequestMapping("/getProduct.mc")///////////////아래 함수가 프로덕트 상세 페이지로 넘어가는 컨트롤러 
	@ResponseBody
	public ModelAndView getProduct( HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
		response.setContentType("text/json;charset=UTF-8");
		ModelAndView mv = new ModelAndView();
		
        String prodname = request.getParameter("prodname");  
        String specimg = request.getParameter("specimg");
        String tmp = request.getParameter("price");
        int price = Integer.parseInt(tmp);
        System.out.println(prodname +  "and  " + specimg);
		/*
		System.out.println("getProduct loaded");
		
		PrintWriter out = response.getWriter();
		ArrayList<ProductVO> list = null;
		
		try {
			list = service.get();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		JSONArray ja = new JSONArray();
		for(ProductVO u:list) {
			JSONObject jo = new JSONObject();
			jo.put("prodname", u.getProdname());
			jo.put("brand", u.getBrand());
			jo.put("price", u.getPrice());
			jo.put("speccpu", u.getSpeccpu());
			jo.put("specram", u.getSpecram());
			jo.put("specstorage", u.getSpecstorage());
			jo.put("specsize", u.getSpecsize());
			jo.put("specimg", u.getSpecimg());
			jo.put("stock", u.getStock());

			ja.add(jo);
		}
		out.print(ja.toJSONString());
		out.close();
		*/
        System.out.println(specimg);
		mv.addObject("prodname", prodname);
		mv.addObject("specimg", specimg);
		mv.addObject("price", price);
		mv.addObject("center", "detail");
		mv.setViewName("main");
		return mv;
	}
}
