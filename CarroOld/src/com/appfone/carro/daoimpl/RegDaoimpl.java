package com.appfone.carro.daoimpl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.appfone.carro.dao.RegDao;
import com.appfone.carro.pojo.Regestration;
import com.appfone.carro.util.DbUtil;


public class RegDaoimpl  implements RegDao {
 
	static Connection con=null;
	
		
	public  int save(Regestration r)
	{ 
		int res=0;
		try
		{
			DbUtil obj = new DbUtil();
			con =obj.getConnection();
		String sql="insert into  registration values(?,?,?)";
		PreparedStatement ps =null;
		ps= con.prepareStatement(sql);
		ps.setString(1, r.getUsername());
		ps.setString(2, r.getEmail());
		ps.setString(3, r.getPassword());
		 res=ps.executeUpdate();
		 System.out.println(res);
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		return res;
				
	}

	


}
