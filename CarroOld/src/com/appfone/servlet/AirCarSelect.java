package com.appfone.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AirCarSelect
 */
@WebServlet("/AirCarSelect")
public class AirCarSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AirCarSelect() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		
		String air_cartype=request.getParameter("air_cartype");
		String air_car=request.getParameter("air_car");
		String air_basic=request.getParameter("air_basic");
		String air_gst=request.getParameter("air_gst");
		String air_total=request.getParameter("air_total");
		
		HttpSession session = request.getSession();
		session.setAttribute("air_cartype", air_cartype);
		session.setAttribute("air_car", air_car);
		session.setAttribute("air_basic", air_basic);
		session.setAttribute("air_gst", air_gst);
		session.setAttribute("air_total", air_total);
	
		response.sendRedirect("airportContact_info.jsp");
		
	}

}
