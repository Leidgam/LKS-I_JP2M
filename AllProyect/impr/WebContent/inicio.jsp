<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
HttpSession sesion = request.getSession(true);
String usuario = (String)sesion.getAttribute("login");
String cod_usuario = null;
if(usuario==null){
	response.sendRedirect("login.jsp");
}else{
cod_usuario = sesion.getAttribute("cod").toString();
}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="ini_cuerpo">
     <div id="ini_arriba">
          <h2>Bienvenido</h2>
          <hr />
          <p id="ini_p">El área de diseño actualmente cuenta con varios computadores que se utilizan para crear, modificar o mejorar los diseños que seguidamente serán utilizados, existe un computador central desde el cual se imprimen los diseños, llamados machotes, sin embargo, los trabajos que se reciben</p>
     </div>
     <div id="ini_abajo">
          <h2>Informacion</h2>
          <hr />
         <table id="ini_table">
              <tr>
                  <td class="ini_head"><img src="imagen/ini_event.png" width="25" height="25"/> Eventos</td>
                  <td></td>
                  <td class="ini_head"><img src="imagen/ini_tarea.png" width="25" height="25"/> Tareas</td>
                  <td></td>
                  <td class="ini_head"><img src="imagen/ini_historial.png" width="25" height="25"/> Historial</td>
              </tr>
              <tr>
                  <td class="ini_body"><p>El área de diseño actualmente cuenta con varios computadores que se utilizan para crear, modificar o mejorar... </p></td>
                  <td class="ini_vacio"></td>
                  <td class="ini_body"><p>El área de diseño actualmente cuenta con varios computadores que se utilizan para crear, modificar o mejorar... </p></td>
                  <td class="ini_vacio"></td>
                  <td class="ini_body"><p>El área de diseño actualmente cuenta con varios computadores que se utilizan para crear, modificar o mejorar... </p></td>
              </tr>
              <tr>
                  <td class="ini_footer"><input id="ini_input" type="submit" name="bonton1" value="More"/></td>
                  <td></td>
                  <td class="ini_footer"><input id="ini_input" type="submit" name="bonton2" value="More"/></td>
                  <td></td>
                  <td class="ini_footer"><input id="ini_input" type="submit" name="bonton3" value="More"/></td>
              </tr>
         </table>
     </div>
     <div id="ini_derecha">
           
     </div>
</div>
</body>
</html>