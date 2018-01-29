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
 * Servlet implementation class Contactserv
 */
@WebServlet("/Contactserv")
public class Contactserv extends HttpServlet {
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
		
		HttpSession session = request.getSession();
		
		String fullname =request.getParameter("fullname");
		String email=request.getParameter("email");
		String phonenumber=request.getParameter("phonenumber");
		String address = request.getParameter("Address");
		String distance=request.getParameter("distance");
		
		
		session.setAttribute("fullname", fullname);
		session.setAttribute("email", email);
		session.setAttribute("phonenumber", phonenumber);
		session.setAttribute("address", address);
		session.setAttribute("distance", distance);
		
		
		response.sendRedirect("booking.jsp");
	}

}
