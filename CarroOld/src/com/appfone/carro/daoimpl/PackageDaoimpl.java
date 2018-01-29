package com.appfone.carro.daoimpl;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.appfone.carro.pojo.Package1;
import com.appfone.carro.util.DbUtil;

public class PackageDaoimpl {
	int i=0;
	int ln=0;
	
	public int getLn() {
		return ln;
	}

	public void setLn(int ln) {
		this.ln = ln;
	}
	String imagepath[] = new String[ln];

	public String[] getImagepath() {
		return imagepath;
	}

	public void setImagepath(String[] imagepath) {
		this.imagepath = imagepath;
	}

	public List<String> fetchPackanames()
	{
		List<String> packlist=new ArrayList<String>();
		String plist=null;
		DbUtil db=new DbUtil();
		
		try
		{
		Connection con = db.getConnection();
		Statement stmt = con.createStatement();
		//String sql = "SELECT pv.price,mt.mt_name,p.p_name,p.sight_seen,p.img FROM model_type mt,package_vehicle pv,package p   WHERE mt.mt_id=pv.mt_id AND p.p_id=pv.p_id";
		String sql="select p_name from package";
		ResultSet res=stmt.executeQuery(sql);
		while(res.next())
		{
			plist = res.getString("p_name");
			packlist.add(plist);
		}
		
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		
		return packlist;
		
	}
	
	public int fetchPackcount()
	{
		
		DbUtil db=new DbUtil();
		ResultSet res=null;
		int count=0;
		try
		{

		Connection con = db.getConnection();
		String sql = "select * from package";
		Statement stmt = con.createStatement();
		 res=stmt.executeQuery(sql);
		 res.last();
		 count =res.getRow();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		i=count;
		return count;
		
	}
	
public void fetchImage()
	{
		DbUtil db=new DbUtil();
		ResultSet res=null;
		Blob b;
		byte[ ] imgData =null;
		
		try
		{

			Connection con = db.getConnection();
			String sql = "select img from package";
			Statement stmt = con.createStatement();
			res=stmt.executeQuery(sql);
			FileOutputStream fos=null;
			int i=0;
			
			while(res.next())
			{
				b=res.getBlob("img");
				imgData=b.getBytes(1, (int)b.length());
				 fos = new FileOutputStream(imagepath[i]);
				fos.write(imgData);
				i++;
			}
		
			
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
		
	}

	
	
}
