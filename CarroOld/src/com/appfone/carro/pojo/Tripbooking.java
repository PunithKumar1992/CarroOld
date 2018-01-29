package com.appfone.carro.pojo;
import java.io.*;
import java.sql.Blob;


public class Tripbooking {
	private int Tb_id;
	private String V_Type;
	private String V_Name;
	private String per_day;
	private String Source_point;
	private String Pick_point;
	private String Dest_point;
	private String Dist;
	private String Per_km;
	private String Driver_bata;
	private String Cust_name;
	private String Trav_date;
	private String Cust_email;
	private String Cust_phone;
	private String Cust_address;
	private String Basic_amt;
	private String final_bata;
	private String Gst_tax;
	private String Total_approx;
	private String Details_pdf;
	public String getFinal_bata() {
		return final_bata;
	}
	public void setFinal_bata(String final_bata) {
		this.final_bata = final_bata;
	}
	
	
	public int getTb_id() {
		return Tb_id;
	}
	public void setTb_id(int tb_id) {
		Tb_id = tb_id;
	}
	public String getV_Type() {
		return V_Type;
	}
	public void setV_Type(String v_Type) {
		V_Type = v_Type;
	}
	public String getV_Name() {
		return V_Name;
	}
	public void setV_Name(String v_Name) {
		V_Name = v_Name;
	}
	public String getSource_point() {
		return Source_point;
	}
	public void setSource_point(String source_point) {
		Source_point = source_point;
	}
	public String getPick_point() {
		return Pick_point;
	}
	public void setPick_point(String pick_point) {
		Pick_point = pick_point;
	}
	public String getDest_point() {
		return Dest_point;
	}
	public void setDest_point(String dest_point) {
		Dest_point = dest_point;
	}
	public String getDist() {
		return Dist;
	}
	public void setDist(String dist) {
		Dist = dist;
	}
	public String getPer_km() {
		return Per_km;
	}
	public void setPer_km(String per_km) {
		Per_km = per_km;
	}
	public String getDriver_bata() {
		return Driver_bata;
	}
	public void setDriver_bata(String driver_bata) {
		Driver_bata = driver_bata;
	}
	public String getCust_name() {
		return Cust_name;
	}
	public void setCust_name(String cust_name) {
		Cust_name = cust_name;
	}
	public String getCust_email() {
		return Cust_email;
	}
	public void setCust_email(String cust_email) {
		Cust_email = cust_email;
	}
	public String getCust_phone() {
		return Cust_phone;
	}
	public void setCust_phone(String cust_phone) {
		Cust_phone = cust_phone;
	}
	public String getCust_address() {
		return Cust_address;
	}
	public void setCust_address(String cust_address) {
		Cust_address = cust_address;
	}
	public String getBasic_amt() {
		return Basic_amt;
	}
	public void setBasic_amt(String basic_amt) {
		Basic_amt = basic_amt;
	}
	public String getGst_tax() {
		return Gst_tax;
	}
	public void setGst_tax(String gst_tax) {
		Gst_tax = gst_tax;
	}
	public String getTotal_approx() {
		return Total_approx;
	}
	public void setTotal_approx(String total_approx) {
		Total_approx = total_approx;
	}
	public String getDetails_pdf() {
		return Details_pdf;
	}
	public void setDetails_pdf(String details_pdf) {
		Details_pdf = details_pdf;
	}
	public String getPer_day() {
		return per_day;
	}
	public void setPer_day(String per_day) {
		this.per_day = per_day;
	}
	public String getTrav_date() {
		return Trav_date;
	}
	public void setTrav_date(String trav_date) {
		Trav_date = trav_date;
	}
	
	
	

}
