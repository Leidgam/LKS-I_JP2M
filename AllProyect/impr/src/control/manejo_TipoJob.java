package control;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;

import javax.swing.JOptionPane;

import modelo.TipoJob;
import modelo.persona;
import modelo.tipojob_parte;

public class manejo_TipoJob {
	Connection cn;
    conexion cx= new conexion();
    Statement st;
    ResultSet rs;
    manejo_tipoJobParte mtjp;
    public LinkedList<TipoJob> Listar(){
		 LinkedList<TipoJob> p = new LinkedList<TipoJob>();
		 String sql;

	        try {
	            sql="select * from TIPO_JOB";
	            cn=cx.conectate();
	            st = cn.createStatement();
	           rs= st.executeQuery(sql);
	           while(rs.next()){
	        	   TipoJob tj = new TipoJob();
	        	   tj.setCod_TipoJob(rs.getString(1));
	        	   tj.setNombre(rs.getString(2));
	        	   tj.setDescripcion(rs.getString(3));
	        	   tj.setEstado(Integer.parseInt(rs.getString(4)));
	        	  
	        	   p.add(tj);
	           }
	           return p;
	        } catch (Exception ex){
	            JOptionPane.showMessageDialog(null,"error: "+ ex);
	        }
	        return null;
	    }
    
    public TipoJob getXId(String idTipoJob){
		 TipoJob p = new TipoJob();
		 String sql;

	        try {
	            sql="select * from TIPO_JOB where COD_TIPOJOB='"+idTipoJob+"'";
	            cn=cx.conectate();
	            st = cn.createStatement();
	           rs= st.executeQuery(sql);
	           while(rs.next()){
	        	   TipoJob tj = new TipoJob();
	        	   tj.setCod_TipoJob(rs.getString(1));
	        	   tj.setNombre(rs.getString(2));
	        	   tj.setDescripcion(rs.getString(3));
	        	   tj.setEstado(Integer.parseInt(rs.getString(4)));
	        	  
	        	   p=tj;
	           }
	           mtjp = new manejo_tipoJobParte();
	           LinkedList<tipojob_parte> lista = mtjp.Listar(idTipoJob);
	           p.partes=lista;
	           return p;
	        } catch (Exception ex){
	            JOptionPane.showMessageDialog(null,"error: "+ ex);
	        }
	        return null;
	    }
    
}
