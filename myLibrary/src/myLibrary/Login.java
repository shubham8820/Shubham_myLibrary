package myLibrary;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;


public class Login extends HttpServlet 
{
	public void doPost(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException
	{
		response.setContentType("text/html");  
	    PrintWriter out = response.getWriter();  
	          
	    String n=request.getParameter("userName");  
	    String p=request.getParameter("userPass"); 
	    
	    ArrayList<String> users=new ArrayList<String>();
	    users.add("shubham");
	    users.add("kirankumar");
	    users.add("default");

	    if(users.contains(p))
	    {  
	        
	        ArrayList<String> authors=new ArrayList<String>();
	        authors.add("Paulo Coelho");
	        authors.add("Dan Brown");
	        authors.add("Satyajit Ray");
	        authors.add("J K Rowling");
	    	
	    	
	    	
	        request.setAttribute("authors", authors);
	        request.getRequestDispatcher("/welcome.jsp").include(request, response);
	        
	        
	        String name = request.getParameter("aName");
	        //request.setAttribute("name",name);
	        //System.out.println(name);
	       
	        
	    }  
	    else
	    {  
	        out.print("Enter UserName and Password ");  
	        RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");  
	        rd.include(request, response);             
	    }  
	
	}
}
