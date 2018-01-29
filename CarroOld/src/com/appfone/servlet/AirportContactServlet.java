package com.appfone.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Image;
import com.itextpdf.text.List;
import com.itextpdf.text.ListItem;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.lowagie.text.Rectangle;

/**
 * Servlet implementation class AirportContactServlet
 */
@WebServlet("/AirportContactServlet")
public class AirportContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	String air_source;
	String air_way;
	String air_pick;
	String air_destination;
	String air_date;
	String air_fullname;
	String air_email;
	String air_phonenumber;
	String air_distance;
	String recipent_subject="Airport Pick_up/Drop Conformation";
	String admin_subject="Airport Pick_up/Drop Request";
	String admin_content="";
	String recipent_content="Your Airport Pick_up/Drop has been successfully booked we will get back to u soon   ";
	String admin_email="carrocar12345@gmail.com";
	String air_cartype;
	String air_car;
	String air_basic;
	String air_gst;
	String air_total;
	
    public AirportContactServlet() {
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
		response.setContentType("text/htmL");
		
		
		air_fullname=request.getParameter("air_fullname");
		air_email=request.getParameter("air_email");
	    air_phonenumber=request.getParameter("air_phonenumber");
	    air_distance=request.getParameter("air_distance");
		
		HttpSession session = request.getSession();
		air_source=session.getAttribute("air_source").toString();
		air_way=session.getAttribute("air_way").toString();
		air_pick=session.getAttribute("air_pick").toString();
		 air_destination=session.getAttribute("air_destination").toString();
		 air_date=session.getAttribute("air_date").toString();
		 air_cartype=session.getAttribute("air_cartype").toString();
		 air_car=session.getAttribute("air_car").toString();
		 air_basic=session.getAttribute("air_basic").toString();
		 air_gst=session.getAttribute("air_gst").toString();
		 air_total=session.getAttribute("air_total").toString();
		 
		 
		 
		 genarte_pdf();
		 String relativeWebPath = "/airresource/pdf/"+air_fullname +".pdf";
		String absoluteDiskPath = getServletContext().getRealPath(relativeWebPath);
		
		  EmailUtility.sendMail(air_email, recipent_subject, recipent_content, absoluteDiskPath, air_fullname);
	      EmailUtility.sendMail("carrocar12345@gmail.com", admin_subject, admin_content, absoluteDiskPath, air_fullname);
	      EmailUtility.delfile(absoluteDiskPath);
	      new SMSApi().sendSms(air_phonenumber, "Thank You For Choosing carrocabs. Your Booking is Confirmed Our Representative will Contact you Shortly.");
	       String userMsg ="Hi New Airport Booking Occured. \n"
	       		+ "Car Type :"+air_cartype+"\n"
	       				+ "Pickup Point :"+air_pick+"\n"
	       				+ "Destination Point :"+air_destination+"\n"
	       				+ "Name :"+air_fullname+"\n"
	       				+ "MobileNo :"+air_phonenumber+"\n"
	       				+ "Email :"+air_email+"\n"
	       				+ "Approx Total :"+air_total;
	    		   
	       String sms2= new SMSApi().sendSms("9886038268,7353723333", userMsg);
	     	
		RequestDispatcher rd=request.getRequestDispatcher("popup.html");
		System.out.println("email complete");
		rd.include(request, response);
		
	}

	public void genarte_pdf()
	{
		String relativeWebPath = "/airresource/pdf/"+air_fullname +".pdf";
		String absoluteDiskPath = getServletContext().getRealPath(relativeWebPath);
		
try {
	
	Document document = new Document();
	
	
	PdfWriter pdfWriter = PdfWriter.getInstance(document, new FileOutputStream(absoluteDiskPath));
	document.open();
				
			pdfWriter.setPageEvent(new PDFEventListener());

			String imgrelativePath = "/images/cp-logo.png";
			String imgabsolutePath = getServletContext().getRealPath(imgrelativePath);
		    
 
      Image image = Image.getInstance (imgabsolutePath);
      image.scaleAbsolute(120f, 60f); 
 
 
      PdfPTable table=new PdfPTable(2);
 
                      PdfPCell cell = new PdfPCell (new Paragraph ("Order Booking Details"));
       table.getDefaultCell().setBorder(PdfPCell.NO_BORDER);
       cell.setColspan (2);
       cell.setBorder(Rectangle.NO_BORDER);
       cell.setHorizontalAlignment (Element.ALIGN_CENTER);
       cell.setPadding (10.0f);
       cell.setBackgroundColor (new BaseColor (145, 225, 85));  
      
       
       PdfPCell cell1 = new PdfPCell (new Paragraph(""));
       
       cell1.setColspan (2);
       cell1.setBorder(Rectangle.NO_BORDER);
       cell1.setHorizontalAlignment (Element.ALIGN_CENTER);
       cell1.setPadding (10.0f);
   
       table.addCell(cell);   
       table.addCell(new Paragraph("    "));
       table.addCell(new Paragraph("    "));
       table.addCell(new Paragraph("    "));
       table.addCell(new Paragraph("    "));
      
       
       table.addCell("Source Point");
       table.addCell(air_source);
       table.addCell("Pick Up Point");
       table.addCell(air_pick);
       table.addCell("Destination Point");
       table.addCell(air_destination);
       table.addCell("Distance");
       table.addCell(air_distance);
       table.addCell("Trip Way");
       table.addCell(air_way);
       table.addCell("Travelling Date");
       table.addCell(air_date);
       table.addCell("Selected Vehicle Type");
       table.addCell(air_cartype);
       table.addCell("Selected Vehicle ");
       table.addCell(air_car);  
       table.addCell("Name");
       table.addCell(air_fullname);
       table.addCell("Email");
       table.addCell(air_email);
       table.addCell("Phone Number");
       table.addCell(air_phonenumber);
       table.addCell("Basic Amount");
       table.addCell(air_basic);
       table.addCell("Gst Amount ");
       table.addCell(air_gst);
       table.addCell("Total Amount ");
       table.addCell(air_total);
       
       
       
       
       table.setSpacingBefore(30.0f);       
       table.setSpacingAfter(30.0f);        								          
 
 
       List list=new List(true,30);
           list.add(new ListItem("Java4s"));
       list.add(new ListItem("Php4s"));
       list.add(new ListItem("Some Thing...")); 
 

          document.open();		       
 
 document.add(image);
     document.add(new Paragraph("Document Generated On - "+new Date().toString())); 
 
 document.add(table);

          document.close();
    System.out.println("Pdf created successfully..");
 
        } catch (Exception e) {
            e.printStackTrace();
	}


	
	}
	
	


}
