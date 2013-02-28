package control;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;

import javax.swing.JOptionPane;

import modelo.TipoJob;
import modelo.parte;
import modelo.tipojob_parte;

public class manejo_tipoJobParte {
	Connection cn;
    conexion cx= new conexion();
    Statement st;
    ResultSet rs;
    
    public LinkedList<tipojob_parte> Listar(String idTipoJob){
		 LinkedList<tipojob_parte> p = new LinkedList<tipojob_parte>();
		 String sql;

	        try {
	            sql="select a.orden, b.cod_parte, b.cabecera from tipojob_parte a, parte b where a.cod_parte=b.cod_parte and cod_tipojob='"+idTipoJob+"'";
	            cn=cx.conectate();
	            st = cn.createStatement();
	           rs= st.executeQuery(sql);
	           while(rs.next()){
	        	   tipojob_parte tj = new tipojob_parte();
	        	   tj.setOrden(Integer.parseInt(rs.getString(1)));
	        	   parte pa = new parte();
	        	   pa.setCod_parte(rs.getString(2));
	        	   pa.setCabecera(rs.getString(3));
	        	   tj.setParte(pa);	 
	        	   TipoJob tp = new TipoJob();
	        	   tp.setCod_TipoJob(idTipoJob);
	        	   tj.setTipoJob(tp);
	        	   p.add(tj);
	           }
	           return p;
	        } catch (Exception ex){
	            JOptionPane.showMessageDialog(null,"error: "+ ex);
	        }
	        return null;
	    }
}
