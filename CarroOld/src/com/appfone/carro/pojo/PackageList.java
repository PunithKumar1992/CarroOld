package com.appfone.carro.pojo;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.appfone.carro.daoimpl.PackageDaoimpl;
import com.mysql.jdbc.Blob;

public class PackageList {

	private Integer packcount;
	private List<String> packnames;
	

	public void setPacknames() {
		PackageDaoimpl obj=new PackageDaoimpl();
		packnames=obj.fetchPackanames();
		
	}


	public List<String> getPacknames() {
		return packnames;
	}


	public void setPackcount() {
		PackageDaoimpl obj=new PackageDaoimpl();
		packcount=obj.fetchPackcount();
	}


	public int getPackcount() {
		return packcount;
	}



	public void show()
	{
		System.out.println();
	}

	

	
}
