package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.persona;

import control.manejo_persona;
import control.manejo_usu;

/**
 * Servlet implementation class personas
 */
public class personas extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public personas() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

PrintWriter out=response.getWriter();
		
		manejo_persona mp = new manejo_persona();
		LinkedList<persona> lista = mp.Listar();
		
		
		
		out.println("<div id='cuerpo'>");
		out.println("<center>Personas</center>");
		
		out.println("<table align='center' id='tablePer'> ");
		out.println("<tr BGCOLOR=#D2E0FB>");
		out.println("<td>CODIGO PERSONA</td>");
		out.println("<td>NOMBRES</td>");
		out.println("<td>APELLIDOS</td>");
		out.println("<td>OPC</td>");
		out.println("</tr>");
		for(int i=0;i<lista.size();i++){
		out.println("<tr>");
		out.println("<td>"+lista.get(i).getCod_Persona()+"</td>");
		out.println("<td>"+lista.get(i).getNombre()+"</td>");
		out.println("<td>"+lista.get(i).getApellido()+"</td>");
		out.println("<td> <input type='hidden' value='"+lista.get(i).getCod_Persona()+"' id='cod_per"+i+"'> <a onclick='getPersona("+i+")'> <img   alt='5px' src='//localhost:8080/impr/images/descarga (1).jpg'></a> </td>");
	
		out.println("</tr>");
		}
		out.println("</table>");
		out.println("</div>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

	}

}
