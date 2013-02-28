package control;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.swing.JOptionPane;

import modelo.*;

public class manejo_cliente {
	Connection cn;
    conexion cx= new conexion();
    Statement st;
    ResultSet rs;

	 public void InsertarCliente(cliente c)
	    {   String sql;

	        try {
	            sql=" Begin insertar_cliente('"+c.getCod_persona()+"',null,'"+c.getCod_usuario()+"',"+c.getEstado()+",null, null); end;";
	            cn=cx.conectate();
	            st = cn.createStatement();
	            st.executeUpdate(sql);
	        } catch (Exception ex){
	            JOptionPane.showMessageDialog(null,"error: "+ ex);
	        }
	    }
	 public void ok()
	    {   String sql;

	        try {
	        	
	            cn=cx.conectate();
	            st = cn.createStatement();
	          
	        	for(int i=2; i<5; i++){
	        		st.executeUpdate("insert into rol_acceso (cod_rol, cod_acceso, estado) values ('RL03','ACC0"+i+"', 1)");
	        	}
	            
	        } catch (Exception ex){
	            JOptionPane.showMessageDialog(null,"error: "+ ex);
	        }
	    }
}
