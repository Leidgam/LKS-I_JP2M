package servlets;

import com.opensymphony.xwork2.ActionSupport;
import java.util.Enumeration;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

public class jqueryRate extends ActionSupport implements
        ServletRequestAware, ServletResponseAware {

    private HttpServletRequest request;
    private HttpServletResponse response;
    private ServletOutputStream sos;

    public jqueryRate() {
    }

    public String execute() throws Exception {

        sos = response.getOutputStream();

        Enumeration enumeration = request.getParameterNames();
        String parametro;

        StringBuilder salida = new StringBuilder();

         //Escritura en formato JSON del array
        int contador = 0;
        while (enumeration.hasMoreElements()) {
            contador++;
            parametro = enumeration.nextElement().toString();
            salida.append("{\"Parametro\":\"" + parametro + "\",\"Valor\":\"" + request.getParameter(parametro).toString() + "\"},");
         }
        //Quita la coma final
        salida.deleteCharAt(salida.length() - 1);

        if (contador ==1) {
            salida.insert(0, "[");
            salida.append("]");
        }

        //Imprime el resultado
        sos.print(salida.toString());

        return null;    //Devuelve NULL para no tener vista

    }

    public void setServletRequest(HttpServletRequest hsr) {
        this.request = hsr;
    }

    public void setServletResponse(HttpServletResponse hsr) {
        this.response = hsr;
    }
}
