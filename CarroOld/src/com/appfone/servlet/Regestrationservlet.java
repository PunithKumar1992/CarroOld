package com.appfone.servlet;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.appfone.carro.dao.*;
import com.appfone.carro.daoimpl.RegDaoimpl;
import com.appfone.carro.pojo.*;


public class Regestrationservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
System.out.println("welcome");
		
		String username=request.getParameter("user");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		Regestration r = new Regestration();
		RegDaoimpl obj = new RegDaoimpl();
		r.setUsername(username);
		r.setEmail(email);
		r.setPassword(password);
		int status = obj.save(r);
		if(status>=1)
		{
			pw.println("<html>");
			pw.println("<body>");
			
		pw.println("<div style='margin-top:5%; left:50% ; color:red'>");
		pw.println("<center>Registred successfully now you can login </center>");
		pw.print("</div>");
		
		pw.println("</body>");
		pw.println("</html>");
			RequestDispatcher rd =request.getRequestDispatcher("Login_Registration.jsp");
			rd.include(request, response);
		}
		else
		{
			pw.print("Registration not successfull ");
			response.sendRedirect("Login_Registration.jsp");			
		}
		
		
	}

}
