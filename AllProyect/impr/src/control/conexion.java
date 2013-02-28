package control;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;


public class conexion {
	Connection conex;
    private String url="jdbc:oracle:thin:@pupo-75bc22ced9:1521:imprenta";
    private String usu="imprenta";
    private String pass="hola";
    
    public Connection conectate(){
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
            conex=DriverManager.getConnection(url, usu, pass);
        
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null,"error"+ex);
        }
    return conex;
    }


}
