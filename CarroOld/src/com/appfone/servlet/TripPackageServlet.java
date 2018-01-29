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
 * Servlet implementation class TripPackageServlet
 */
@WebServlet("/TripPackageServlet")
public class TripPackageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		
		String car=request.getParameter("car");
		String pack_package =request.getParameter("pack_package");
		System.out.println("package is" +pack_package);
		String  price =request.getParameter("packprice");
		
		
		HttpSession session = request.getSession();
		session.setAttribute("pack_car", car);
		session.setAttribute("pack_package", pack_package);
		session.setAttribute("pack_price", price);
		
		response.sendRedirect("Tripcontact_info.jsp");	
		
	}

}
