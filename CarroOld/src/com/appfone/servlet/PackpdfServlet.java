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

  import java.io.File;
import java.io.FileOutputStream;
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
import javax.mail.internet.MimeMessage.RecipientType;
import javax.mail.internet.MimeMultipart;

import com.appfone.carro.daoimpl.TrippackageDaoimpl;
import com.appfone.carro.pojo.Trippackage;
import com.appfone.servlet.EmailUtility;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Image;
import com.itextpdf.text.List;
import com.itextpdf.text.ListItem;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Image;
import com.itextpdf.text.List;
import com.itextpdf.text.ListItem;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;




@WebServlet("/PackpdfServlet")


public class PackpdfServlet extends HttpServlet {
	private String host;
	private String port;
	private String user;
	private String pass;
	

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}
String pack_recipient=null;
String subject=null;
String content=null;
String email=null;
String pack_fullname=null;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		PrintWriter out=response.getWriter();
		HttpSession session =request.getSession();
		String pack_car =session.getAttribute("pack_car").toString();
		String pack_package =session.getAttribute("pack_package").toString();
		String pack_price =session.getAttribute("pack_price").toString();
		 pack_fullname=session.getAttribute("pack_fullname").toString();
		String pack_email=session.getAttribute("pack_email").toString();
		String pack_phone=session.getAttribute("pack_phone").toString();
		String pack_address =session.getAttribute("pack_address").toString();
		String pack_pick=session.getAttribute("pack_pick").toString();
		String pack_basicamt=session.getAttribute("pack_basicamt").toString();
		String pack_gst=session.getAttribute("pack_gst").toString();
		String pack_grand=session.getAttribute("pack_grand").toString();
		pack_recipient=session.getAttribute("pack_recipient").toString();
		String pack_date=session.getAttribute("pack_date").toString();
				
		String relativeWebPath = "/packresource/pdf/"+pack_fullname +".pdf";
		String absoluteDiskPath = getServletContext().getRealPath(relativeWebPath);
		subject="Booking confrmation Mail";
		content="Your Booking conformation request accpected our exceutive will contact u shortly";
				
		
		
	
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
		      
		       table.addCell("Selected Vechile ");
		       table.addCell(pack_car);
		       table.addCell("Selected Package");
		                      table.addCell(pack_package);
		       table.addCell("Price");
		       table.addCell(pack_price);
		       table.addCell("Pick Up Point");
		       table.addCell(pack_pick);
		       table.addCell("Travelling Date");
		       table.addCell(pack_date);
		       
		       table.addCell("Name");
		       table.addCell(pack_fullname);
		       table.addCell("Email");
		       table.addCell(pack_email);
		       table.addCell("Phone Number");
		       table.addCell(pack_phone);
		       table.addCell("Address");
		       table.addCell(pack_address);
		       table.addCell("Basic Amount");
		       table.addCell(pack_basicamt);
		       table.addCell("Gst");
		       table.addCell(pack_gst);
		       table.addCell("Total Approx.amount");
		       table.addCell(pack_grand);
		       table.setSpacingBefore(30.0f);       
		       table.setSpacingAfter(30.0f);        								          
		 
		 
		      

		          document.open();		       
		 
		 document.add(image);
		     document.add(new Paragraph("Document Generated On - "+new Date().toString())); 
		 
		 document.add(table);

		          document.close();
		    System.out.println("Pdf created successfully..");
		 
		        } catch (Exception e) {
		            e.printStackTrace();
		        }
		        System.out.println("success");
		        Trippackage tp = new Trippackage();
		        tp.setV_Name(pack_car);
		        tp.setPick_Point(pack_pick);
		        tp.setTrav_date(pack_date);
		        tp.setSelected_pack(pack_package);
		        tp.setCust_name(pack_fullname);
		        tp.setCust_mobile(pack_phone);
		        tp.setCust_addr(pack_address);
		        tp.setEmail(pack_email);
		        tp.setBasic_amt(pack_basicamt);
		        tp.setGst_tax(pack_gst);
		        tp.setTotal_amt(pack_grand);
		        tp.setDetails_pdf(absoluteDiskPath);
		        TrippackageDaoimpl tpd=new TrippackageDaoimpl();
		        tpd.saveTripPack(tp);
			
		        EmailUtility.sendMail(pack_recipient, subject, content, absoluteDiskPath, pack_fullname );
		        EmailUtility.sendMail("carrocar12345@gmail.com", "Rider Booking Details", "Find the booking Details in the Attached ", absoluteDiskPath, pack_fullname );
		        EmailUtility.delfile(absoluteDiskPath);
		        new SMSApi().sendSms(pack_phone, "Thank You For Choosing carrocabs. Your Booking is Confirmed Our Representative will Contact you Shortly.");
		        String userMsg ="Hi New Package Booking Occured. \n"
		        		+ "Car Type :"+pack_car+"\n"
		        				+ "Pickup Point :"+pack_pick+"\n"
		        				+ "Package Selected :"+pack_package+"\n"
		        				+ "Name :"+pack_fullname+"\n"
		        				+ "MobileNo :"+pack_phone+"\n"
		        				+ "Email :"+pack_email+"\n"
		        				+ "Approx Total :"+pack_grand;
		     		   
		        String sms2= new SMSApi().sendSms("9886038268,7353723333", userMsg);
		      	
		       
		          
		response.sendRedirect("popup.html");		
		
	}


    }

	

	
	
	
