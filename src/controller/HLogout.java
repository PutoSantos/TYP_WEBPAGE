package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.InitDB;

@WebServlet("/HLogout")
public class HLogout extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	
	InitDB db;
       
    public HLogout() 
    {
        super();
        db = new InitDB();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		db.ConnectDB();
		
		
		doGet(request, response);
	}

}
