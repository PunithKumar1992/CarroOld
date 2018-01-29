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
 * Servlet implementation class CarSelect
 */
@WebServlet("/CarSelect")
public class CarSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		
		String cartype=request.getParameter("cartype");
		String car = request.getParameter("car");
		String price = request.getParameter("price");
		String perday = request.getParameter("perday");
		String driverbata = request.getParameter("driverbata");
		
		HttpSession session = request.getSession();
		session.setAttribute("cartype", cartype);
		session.setAttribute("car", car);
		session.setAttribute("price", price);
		session.setAttribute("perday", perday);
		session.setAttribute("driverbata", driverbata);
		
		response.sendRedirect("contact_info.jsp");
		
		
		
		
	}

}
