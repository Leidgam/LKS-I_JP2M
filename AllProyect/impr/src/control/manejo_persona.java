package control;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;

import javax.swing.JOptionPane;

import modelo.persona;

public class manejo_persona {
	Connection cn;
    conexion cx= new conexion();
    Statement st;
    ResultSet rs;

	 public void InsertarPersona( persona p)
	    {   String sql;

	        try {
	            sql=" Begin insertar_persona('"+p.getNombre()+"','"+p.getApellido()+"','"+p.getSexo()+"',"+p.getTipoPersona()+",to_date('"+p.getFecha_nac()+"','DD/MM/YYYY'),'"+p.getDireccion()+"','"+p.getEmail()+"','"+p.getCod_usuario()+"',"+p.getEstado()+",'"+p.getNo_ident()+"',"+p.getTipo_ident()+",'"+p.getDistrito()+"','"+p.getProvincia()+"','"+p.getDepartamento()+"','"+p.getPais()+"',null,null,null); end;";
	            cn=cx.conectate();
	            st = cn.createStatement();
	            st.executeUpdate(sql);
	        } catch (Exception ex){
	            JOptionPane.showMessageDialog(null,"error: "+ ex);
	        }
	    }
	 public LinkedList<persona> Listar(){
		 LinkedList<persona> p = new LinkedList<persona>();
		 String sql;

	        try {
	            sql="select cod_persona, nombre, apellidos from persona";
	            cn=cx.conectate();
	            st = cn.createStatement();
	           rs= st.executeQuery(sql);
	           while(rs.next()){
	        	   persona pp = new persona();
	        	   pp.setNombre(rs.getString(2));
	        	   pp.setApellido(rs.getString(3));
	        	   pp.setCod_Persona(rs.getString(1));
	        	   p.add(pp);
	           }
	           return p;
	        } catch (Exception ex){
	            JOptionPane.showMessageDialog(null,"error: "+ ex);
	        }
	        return null;
	    }
	 
	 public persona getPersona(String codigo_Persona){
		 persona p = new persona();

	        try {
	          String sql="select cod_persona, nombre, apellidos, sexo, tipo_persona, fecha_nac, direccion, email, tipo_ident, no_identificacion, distrito, provincia, departamento, pais from persona where cod_persona='"+codigo_Persona+"'";
	            cn=cx.conectate();
	            st = cn.createStatement();
	           rs= st.executeQuery(sql);
	           while(rs.next()){
	        	 p.setCod_Persona(codigo_Persona);
	        	 p.setNombre(rs.getString(2));
	        	 p.setApellido(rs.getString(3));
	        	
	        	  p.setSexo(rs.getString(4));
	        	  p.setTipo_persona(Integer.parseInt(rs.getString(5)));
	        	   p.setFecha_nac(rs.getString(6));
	        	   p.setDireccion(rs.getString(7));
	        	   p.setEmail(rs.getString(8));
	        	   p.setTipo_ident(Integer.parseInt(rs.getString(9)));
	        	   p.setNo_ident(rs.getString(10));
	        	   p.setDistrito(rs.getString(11));
	        	   p.setProvincia(rs.getString(12));
	        	   p.setDepartamento(rs.getString(13));
	        	   p.setPais(rs.getString(14));
	           }
	           return p;
	        } catch (Exception ex){
	            JOptionPane.showMessageDialog(null,"error: "+ ex);
	        }
	        return null;
	    }
}
