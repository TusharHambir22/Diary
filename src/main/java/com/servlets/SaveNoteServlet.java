package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;


public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SaveNoteServlet()
    {
        super();     
    }



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{		
		try
		{
			//Title Content Fetch
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			
			Note note=new Note(title, content, new Date());
//			System.out.println(note.getId() + " : " + note.getTitle()); //to check working
			
			//Hibernate Save();
			Session s=FactoryProvider.getFactory().openSession();
			//to save data permanatly 
			Transaction tx=s.beginTransaction();
			s.save(note);
			tx.commit();
			s.close();	
			
			
			//Apan jo data pathavtoy to contya type cha ahe ex-<h1> wala Data...
			response.setContentType("text/html");
			//data store zalya Nanter Output la message Yenar....
			PrintWriter out=response.getWriter();
			out.println("<h1 style='text-align:center;'>Note Added Successfully....</h1>");
			out.println("<h1 style='text-align:center;'><a href ='all_notes.jsp'>View All Notes</a></h1>");

		
			

			
				
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
