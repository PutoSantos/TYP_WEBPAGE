package service;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;

public class InitDB 
{
	Connection conn = null;
	
	public InitDB()
	{
		
	}
	
	public void ConnectDB()
	{
		String driverUrl = "com.mysql.jdbc.Driver";
		
		try 
		{
			Class.forName(driverUrl);
			System.out.println("Driver Found");
		} 
		catch (ClassNotFoundException e) 
		{
			System.out.println(e);
		}
		
		String url = "jdbc:mysql://localhost/textyourpath";
		String user = "root";
		String password = "";
		
		try 
		{
			conn = (Connection) DriverManager.getConnection(url, user, password);
			System.out.println("Ligacao a base de dados efectuada com sucesso");
			
		} 
		catch (SQLException e) 
		{
			System.out.println(e);
		}
		
	}
}
