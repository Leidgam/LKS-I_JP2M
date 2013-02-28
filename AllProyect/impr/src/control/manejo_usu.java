package control;
import modelo.acceso;
import modelo.persona;
import modelo.usuario;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.LinkedList;

import javax.swing.JOptionPane;;

public class manejo_usu {
	conexion conn = new conexion();
    Statement st;
    ResultSet rs;
    
 	public usuario Autenticar(String nombre, String contraseña){
	       usuario u = new usuario();
	       
		 try {
		   String sql="select a.login, a.passw, a.cod_usuario codigo, a.estado, b.nombre n, b.apellidos a, c.nombre perfil  from usuario a, persona b, roles c where a.cod_persona = b.cod_persona and a.cod_rol= c.cod_rol and a.login='"+nombre+"' and a.passw='"+ contraseña+"'";
		   st = conn.conectate().createStatement(); 
		   rs= st.executeQuery(sql);

		   while(rs.next()){
		       if(rs.getObject("login").toString().equals(nombre)&rs.getObject("passw").toString().equals(contraseña)){
		         u.setCod_usuario((rs.getObject("codigo").toString()));
		         u.setLogin(nombre);
		         u.setEstado(Integer.parseInt(rs.getObject("estado").toString()));
		         persona p = new persona();
		    	   p.setNombre((rs.getObject("n").toString()));
		    	   p.setApellido((rs.getObject("a").toString()));
		    	   u.setPersona(p);
		    	 u.setRol(rs.getObject("perfil").toString());
		    	   return u;
		       }
		       else{
		     	  return null;
		       }
		   }

		 } catch (Exception ex) {
		   JOptionPane.showMessageDialog(null,"error: "+ ex);
		 }

		   return null;
		    }
	
	public LinkedList<acceso> Accesos(String cod_usuario){
	       LinkedList<acceso> accesos = new LinkedList<acceso>();
	       
		 try {
		   String sql="select d.titulo_acceso titulo, d.url, d.icon, d.tipo from usuario a, roles b, rol_acceso c, acceso d where a.cod_rol=b.cod_rol and b.COD_ROL = c.cod_rol and c.cod_acceso = d.cod_acceso and a.cod_usuario = '"+cod_usuario+"' and d.url is not null";
		   st = conn.conectate().createStatement(); 
		   rs= st.executeQuery(sql);
		   while(rs.next()){
			   acceso at = new acceso();
			   at.setTitulo(rs.getString(1));
			   at.setUrl(rs.getString(2));
			   at.setIcon(rs.getString(3));
			   at.setTipo(Integer.parseInt(rs.getString(4)));
			   accesos.add(at);
		   }
		   return accesos;

		 } catch (Exception ex) {
		   JOptionPane.showMessageDialog(null,"error: "+ ex);
		   
		 }

		   return null;
		    }
	
	public int calcularAccesos(LinkedList<acceso> lista, int tipo ){
		int cantidad =0;
		for(int f=0; f<lista.size(); f++){
			if(lista.get(f).getTipo()==tipo){
				cantidad++;
			}
		}
		
		return cantidad;
	}
	public boolean mostrarAcceos(String cod_usuario){
		boolean ok = false;
		
		if(cod_usuario!=null){
			 try {
				   String sql="select d.titulo_acceso from usuario a, roles b, rol_acceso c, acceso d where a.cod_rol=b.cod_rol and b.COD_ROL = c.cod_rol and c.cod_acceso = d.cod_acceso and a.cod_usuario = '"+cod_usuario+"' and d.url is not null";
				   st = conn.conectate().createStatement(); 
				   rs= st.executeQuery(sql);
				   while(rs.next()){
					  ok=true;
				   }
				  

				 } catch (Exception ex) {
				   JOptionPane.showMessageDialog(null,"error: "+ ex);
				   
				 }	
		}
		
		return ok;
	}
}


