package myLibrary;

import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.*;  
import javax.servlet.http.*;  
  
public class WelcomeServlet extends HttpServlet {  
  
	
    public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
    {  
	    response.setContentType("text/html");  
	    PrintWriter out = response.getWriter();  
	          
	    String name=request.getParameter("aName");  
	    //out.print("Welcome "+n);
	    
	    
	    Map<String, List<String>> hashmap = new HashMap<String, List<String>>();
	    List<String> pc = new ArrayList<String>();
		pc.add("The Alchemist");
		pc.add("Eleven Minutes");
		pc.add("The Archer");
		pc.add("The Pilgrimage");

		List<String> db = new ArrayList<String>();
		db.add("The Lost Symbol");
		db.add("The Da Vinci Code");
		db.add("Angels and Demons");
		db.add("Origins");
		

		List<String> sr = new ArrayList<String>();
		sr.add("Deep Focus");
		sr.add("Reflections on Cinema");

		List<String> jk = new ArrayList<String>();
		
		jk.add("Harry Potter 1");
		jk.add("Harry Potter 2");
		jk.add("Harry Potter 3");
		jk.add("Harry Potter 4");
		
		hashmap.put("Paulo Coelho", pc);
		hashmap.put("Dan Brown", db);
		hashmap.put("Satyajit Ray", sr);
		hashmap.put("J K Rowling", jk);
		
		List<String> temp=hashmap.get(name);
		//for(String x:temp)
		//{
		//	out.print(x);
		//}
		
		request.setAttribute("name", name);
		request.setAttribute("temp", temp);
		
		request.getRequestDispatcher("/book.jsp").forward(request, response);
	    
    }  
  
}  