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
 * Servlet implementation class TripContactservvlet
 */
@WebServlet("/TripContactservvlet")
public class TripContactservvlet extends HttpServlet {
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
		
		String fullname=request.getParameter("fullname");
		String  email  = request.getParameter("email");
		String phone =request.getParameter("phonenumber");
		String address=request.getParameter("Address");
		String pickup = request.getParameter("pick");
		String date =request.getParameter("travellingdate");
				
		
		HttpSession session = request.getSession();
		session.setAttribute("pack_fullname", fullname);
		session.setAttribute("pack_email", email);
		session.setAttribute("pack_phone", phone);
		session.setAttribute("pack_address", address);
		session.setAttribute("pack_pick", pickup);
		session.setAttribute("pack_date", date);
		
		
	response.sendRedirect("pack_booking.jsp");
	}

}
