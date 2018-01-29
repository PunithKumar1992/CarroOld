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


@WebServlet("/tripserv")
public class TripServlet extends HttpServlet {
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
		
		String pick = request.getParameter("source");
		String way = request.getParameter("way");
		String destination = request.getParameter("destination");
		String date = request.getParameter("date");
		String days=request.getParameter("days");
		System.out.println("days is " +days);
		String sourcepoint=request.getParameter("pick");
		
	
		
		
		
		
		
		HttpSession session = request.getSession();
		session.setAttribute("pick", pick);
		session.setAttribute("way", way);
		session.setAttribute("destination", destination);
		session.setAttribute("date", date);
		session.setAttribute("days", days);
		session.setAttribute("sourcepoint", sourcepoint);
		
		

		response.sendRedirect("Carlist.jsp");
			}

}
