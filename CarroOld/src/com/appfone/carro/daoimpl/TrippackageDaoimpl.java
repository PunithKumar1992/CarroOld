package com.appfone.carro.daoimpl;

import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.appfone.carro.pojo.Trippackage;
import com.appfone.carro.util.DbUtil;

public class TrippackageDaoimpl {

	public int saveTripPack(Trippackage tpp)
	{
		int res=0;
		DbUtil db=new DbUtil();
		try
		{
		Connection con = db.getConnection();
		PreparedStatement ps = con.prepareStatement("insert into trippackage (V_NAME,pick_POINT,Tra_DATE,Selected_pack,Cust_Name,Cust_mobile,Cust_addr,email,Basic_amt,Gst_tax,total_amt,Details_pdf)values(?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1, tpp.getV_Name());
		ps.setString(2, tpp.getPick_Point());
		ps.setString(3, tpp.getTrav_date());
		ps.setString(4, tpp.getSelected_pack());
		ps.setString(5, tpp.getCust_name());
		ps.setString(6, tpp.getCust_mobile());
		ps.setString(7, tpp.getCust_addr());
		ps.setString(8, tpp.getEmail());
		ps.setString(9, tpp.getBasic_amt());
		ps.setString(10, tpp.getGst_tax());
		ps.setString(11, tpp.getTotal_amt());
		String pdfpath=tpp.getDetails_pdf();
		File file= new File(pdfpath);
		byte[] bytes=new byte[(int)file.length()];
		DataInputStream dis = new DataInputStream(new FileInputStream(pdfpath));
		dis.readFully(bytes);  
		dis.close();
		ps.setBytes(12, bytes);
		res=ps.executeUpdate();
		
		
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
