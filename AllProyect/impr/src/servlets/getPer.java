package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import modelo.persona;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.manejo_persona;

/**
 * Servlet implementation class getPer
 */
public class getPer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getPer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		 String cod_Persona = request.getParameter("cod_Persona");
		 manejo_persona mp = new manejo_persona();
		 persona p = mp.getPersona(cod_Persona);
		 
		String[] subfecha = p.getFecha_nac().split(" ");
	      
	      p.setFecha_nac(subfecha[0]);
	      char prim = p.getFecha_nac().charAt(0);
	      if(prim=='9'){
	    	  p.setFecha_nac("19"+p.getFecha_nac());
	      }
	      JSONObject obj = new JSONObject();
	     
         
	       obj.put("nombre", p.getNombre());
	       obj.put("apellido", p.getApellido());
	       obj.put("sexo", p.getSexo());
	       obj.put("tipo_per", p.getTipo_persona());
	       obj.put("fecha_nac", p.getFecha_nac());
	       obj.put("direccion", p.getDireccion());
	       obj.put("email", p.getEmail());
	       obj.put("tipo_ident", p.getTipo_ident());
	       obj.put("no_ident", p.getNo_ident());
	       obj.put("distrito", p.getDistrito());
	       obj.put("provincia", p.getProvincia());
	       obj.put("departamento", p.getDepartamento());
	       obj.put("pais", p.getPais());
	  
	      response.setContentType("text/plain");
	      
	      PrintWriter out = response.getWriter();
	      out.write(obj.toString());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
