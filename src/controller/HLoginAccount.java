package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.InitDB;

@WebServlet("/HLoginAccount")
public class HLoginAccount extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	
	InitDB db;
	
    public HLoginAccount() 
    {
        super();
        db = new InitDB();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		request.setAttribute("username", request.getParameter("username"));
		request.getRequestDispatcher("logged.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		db.ConnectDB();
		db.loginSystem(request.getParameter("username"), request.getParameter("password"));
		
		if(db.verify == true)
		{
			doGet(request, response);
		}
		else
		{
			doGetFailure(request, response);
		}
	}
	
	protected void doGetFailure(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		request.getRequestDispatcher("fail.jsp").forward(request, response);
	}
}
