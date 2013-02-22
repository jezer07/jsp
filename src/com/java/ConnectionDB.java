package com.java;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectionDB {

	Statement stmt;
	Connection con1;
	ResultSet rs;
	ResultSetMetaData rsmd;
	public static String data[][];
	public static String str="";
	

	
	public ConnectionDB(String conName){
		
		try{
			
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			con1 = DriverManager.getConnection("jdbc:odbc:"+conName);
			stmt = con1.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
			
		}catch(ClassNotFoundException e){
			e.printStackTrace();
			
		}catch(SQLException e){
			
		}
		
	}
	
	
	public int updateData(String q)
	{
		int result=0;
		
		try{
			result = stmt.executeUpdate(q);
		}catch(SQLException e){
			e.printStackTrace();
			
		}
		return result;
	}
	
	public void close()
	{
		try{
			con1.close();
			
		}catch(SQLException e){
			e.printStackTrace();
			
		}
		
		
	}
	
	public boolean executeSQL(String q){
		boolean test = false;
		
		try{
			rs=stmt.executeQuery(q);
			rsmd = rs.getMetaData();
			rs.last();
			int rows = rs.getRow();
			int cols = rsmd.getColumnCount();
			rs.first();
			data = new String [rows][cols];
			
			if(rows > 0){
				test = true;
				for(int i = 0; i<rows;i++){
					for(int j = 0;j<rows;j++){
						
						data[i][j] = rs.getString(j+1);
					}
					rs.next();
					
				}
				
			}
			
		}catch(SQLException e){
			e.printStackTrace();
			
		}
		
		return test;
	}
	
	
}
