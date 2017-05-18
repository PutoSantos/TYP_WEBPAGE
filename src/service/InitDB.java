package service;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.Connection;

public class InitDB 
{
	Connection conn = null;
	Statement statement = null;
	ResultSet resultset = null;
	
	int resultset2;
	boolean verify = false;
	String userName, userPass, userEmail;
	
	public InitDB()
	{
		
	}
	
	/*******************************LIGACAO A BASE DE DADOS************************************/
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
		
		String url = "jdbc:mysql://localhost:3306/textyourpath";
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
	
	/**************************************************SISTEMA DE LOGIN*********************************************/
	public void loginSystem(String name, String pass)
	{		
		try 
		{
			statement = (Statement) conn.createStatement();
					
			//Sistema para contar quantas contas existem
			resultset = statement.executeQuery("SELECT Count(*) FROM account");
			
			 while (resultset.next()) 
			 {
				  int valor = resultset.getInt(1);
				  System.out.println("Contas Registadas: " + valor);
			 }
			
			resultset = statement.executeQuery("SELECT accountName, accountPass FROM account WHERE accountName LIKE '"+name+"'");
				
			resultset.next();
			userName = resultset.getString("accountName");
			userPass = resultset.getString("accountPass");
			
			if(userName.compareTo(name) == 0)
			{
				if(userPass.compareTo(pass) == 0)
				{
					System.out.println("Login com Successo!");
					verify = true;
					conn.close();
				}
				else
				{
					System.out.println("Errado");
					verify = false;
					conn.close();
				}	
			}
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
		try 
		{
			if(conn.isClosed())
			{
				System.out.println("connection closed");
			}
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
	}
	
	/*******************************************SISTEMA DE REGISTO*******************************************/

	public void registerAccount(String name, String pass, String email)
	{
		try 
		{			
			statement = (Statement) conn.createStatement();
			resultset2 = statement.executeUpdate("INSERT INTO account(accountName, accountPass, accountEmail) VALUES ('"+name+"', '"+pass+"', '"+email+"')");
			conn.close();
		} 
		catch (SQLException e)
		{
			e.printStackTrace();
		}
	}
	
	/*******************************************SISTEMA PARA VALIDAR EMAIL*******************************************/

	public boolean validateEmail(String email)
	{
		try 
		{
			resultset = statement.executeQuery("SELECT accountEmail FROM account WHERE accountEmail LIKE '"+email+"'");
			resultset.next();
			userEmail = resultset.getString("accountEmail");
			
			if(userEmail.compareTo(email) == 0)
			{
				System.out.println("Email encontrado");
				conn.close();
				verify = true;
			}
			else
			{
				System.out.println("O Email introduzido nao se encontra na base de dados");
				conn.close();
			}	
		} 
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return verify;
	}
}
