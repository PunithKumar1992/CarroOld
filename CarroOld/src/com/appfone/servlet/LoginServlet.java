package com.appfone.servlet;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.appfone.carro.dao.*;
import com.appfone.carro.daoimpl.RegDaoimpl;
import com.appfone.carro.util.DbUtil;

/**
 * Servlet implementation class LoginServlet
 */
//@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	public boolean validate(String user,String pass)
	{ 
		
		Connection con=null;
		PreparedStatement ps = null;
		ResultSet res =null;
	
		try
		{
			DbUtil obj = new DbUtil();
			 con = obj.getConnection();
			 String sql="select username, password from registration where username=? && password=?";
			 ps=con.prepareStatement(sql);
			 ps.setString(1, user);
			 ps.setString(2, pass);
			res=ps.executeQuery();
			if(res!=null && res.next())
			{
				return true;
			}
			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return false;
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		
		
		String user=request.getParameter("user");
		String password=request.getParameter("password");
		
		boolean status = validate(user,password);
		System.out.println(status);
		if(status)
		{
			RequestDispatcher rd = request.getRequestDispatcher("logsuccess.jsp");
			rd.forward(request, response);
		}
		else
		{
			pw.println("<html>");
			pw.println("<body>");
			
		pw.println("<div style='margin-top:5%; left:50% ; color:red'>");
		pw.println("<center>Please Register first </center>");
		pw.print("</div>");
		
		pw.println("</body>");
		pw.println("</html>");
			
		response.sendRedirect("Login_Registration.jsp");
		
		}
	}

		
}
	
	

