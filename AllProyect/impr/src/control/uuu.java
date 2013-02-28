package control;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;

import javax.swing.JOptionPane;

import modelo.persona;

public class uuu {

	Connection cn;
    conexion cx= new conexion();
    Statement st;
    ResultSet rs;

	 public void ok(){
		
		 String sql;

	        try {
	        	cn=cx.conectate();
	            st = cn.createStatement();
	        for(int f=1; f<10; f++){
	            
		          st.executeUpdate("insert into rol_acceso (cod_rol, cod_acceso, estado) values ('RL006','AC00"+f+"', 1 )");
	        }
	            
	        
	      
	          
	        } catch (Exception ex){
	            JOptionPane.showMessageDialog(null,"error: "+ ex);
	        }
	        
	    }
}
