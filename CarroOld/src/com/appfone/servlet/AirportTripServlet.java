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
 * Servlet implementation class AirportTrip
 */
@WebServlet("/AirportTrip")
public class AirportTripServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AirportTripServlet() {
        super();
        // TODO Auto-generated constructor stub
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
		
		String air_source=request.getParameter("air_source");
		String air_way=request.getParameter("air_way");
		String air_pick=request.getParameter("air_pick");
		String air_destination=request.getParameter("air_destination");
		String air_date=request.getParameter("air_date");
		
		HttpSession session=request.getSession();
		session.setAttribute("air_source", air_source);
		session.setAttribute("air_way", air_way);
		session.setAttribute("air_pick", air_pick);
		session.setAttribute("air_destination", air_destination);
		session.setAttribute("air_date", air_date);
		response.sendRedirect("airportCarlist.html");
	}

}
