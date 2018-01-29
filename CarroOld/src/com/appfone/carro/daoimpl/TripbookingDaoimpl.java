package com.appfone.carro.daoimpl;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.appfone.carro.pojo.Tripbooking;
import com.appfone.carro.util.DbUtil;

public class TripbookingDaoimpl {
	
	
	public int saveTrip(Tripbooking tpb)
	{
		int res=0;
		try
		{
		DbUtil db=new DbUtil();
		Connection con = db.getConnection();
		
		PreparedStatement ps = con.prepareStatement("insert into tripbooking(V_Type,V_Name,Source_point,Pick_point,Dest_point,Dist,Per_km,Driver_bata,Cust_name,Cust_email,Cust_phone,Cust_address,Basic_amt,Final_bata,Gst_tax,Total_approx,per_day,Details_pdf,Trav_date) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");;
		ps.setString(1, tpb.getV_Type());
		ps.setString(2, tpb.getV_Name());
		ps.setString(3, tpb.getSource_point());
		ps.setString(4, tpb.getPick_point());
		ps.setString(5, tpb.getDest_point());
		ps.setString(6, tpb.getDist());
		ps.setString(7, tpb.getPer_km());
		ps.setString(8, tpb.getDriver_bata());
		ps.setString(9, tpb.getCust_name());
		ps.setString(10, tpb.getCust_email());
		ps.setString(11, tpb.getCust_phone());
		ps.setString(12, tpb.getCust_address());
		ps.setString(13, tpb.getBasic_amt());
		ps.setString(14, tpb.getFinal_bata());
		ps.setString(15, tpb.getGst_tax());
		ps.setString(16, tpb.getTotal_approx());
		ps.setString(19, tpb.getTrav_date());
		String pdfpath=tpb.getDetails_pdf();
		File file= new File(pdfpath);
		byte[] bytes=new byte[(int)file.length()];
		DataInputStream dis = new DataInputStream(new FileInputStream(pdfpath));
		dis.readFully(bytes);  // read from file into byte[] array
		dis.close();
		/*ByteArrayInputStream pdfbytes=new ByteArrayInputStream(bytes);
		FileInputStream fs = new FileInputStream(file);
		*/
		ps.setBytes(18, bytes);
		ps.setString(17, tpb.getPer_day());
		res=ps.executeUpdate();
		System.out.println(tpb.getV_Type());
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
	 catch(FileNotFoundException e)
		{
		 e.printStackTrace();
		}
		catch(IOException e)
		{
			e.printStackTrace();
		}
		return res;
	}

}
