package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.usuario;
import control.manejo_usu;;
/**
 * Servlet implementation class logeo
 */
public class logeo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public logeo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		manejo_usu mu = new manejo_usu();
		usuario u = new usuario();
		String login = request.getParameter("usuario");
		String pass = request.getParameter("contraseña");
		u =mu.Autenticar(login, pass);
		
		if(u!= null){
			
			if(u.getEstado()==0){
				response.sendRedirect("//localhost:8080/impr/login.jsp?error=invalido");
			}
			else{
			HttpSession sesion = request.getSession(true);
			sesion.setAttribute("login", login);
			sesion.setAttribute("cod", u.getCod_usuario());
			sesion.setAttribute("nombre", u.getPersona().getNombre());
			sesion.setAttribute("apellido", u.getPersona().getApellido());
			sesion.setAttribute("perfil", u.getRol());
			response.sendRedirect("index.jsp");
			}
			
		}else{
			response.sendRedirect("//localhost:8080/impr/login.jsp?error=noExiste");
		}
		
	}

}
