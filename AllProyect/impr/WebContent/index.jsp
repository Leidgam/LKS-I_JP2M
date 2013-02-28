<%@page import="control.manejo_usu"%>
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
<script type="text/javascript" src="//localhost:8080/impr/js/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css" href="css/style2.css"/>
<link rel="stylesheet" type="text/css" href="css/style3.css"/>
<link rel="stylesheet" type="text/css" href="css/style4.css"/>
<link rel="stylesheet" type="text/css" href="css/nuevo.css"/>
<link rel="stylesheet" type="text/css" href="css/jquery.coolfieldset.css"/>
<link rel="stylesheet" type="text/css" href="css/contacto.css"/>

<script src="js/ajax.js"></script>
<script src="js/hora.js"></script>

<script src="//localhost:8080/impr/js/jquery-1.8.2.w.js"></script>
<script src="js/open.js"></script>
<script src="js/validate.js"></script>

<script src="//localhost:8080/impr/js/jquery.js"></script>

<script src="//localhost:8080/impr/js/contacto.js"></script>

<script type="text/javascript">
function preparar(){
	alert('funciona');
}
</script>



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="cuerpo">
    <div id="head">
       <div id="menu_ex">
           <div id="logo">
                  <p><img src="" width="30" hidden=""/> <%=sesion.getAttribute("perfil")%>: <%=sesion.getAttribute("nombre")%> <%=sesion.getAttribute("apellido")%></p>
           </div>
           <ul id="con">
              <li><a href="fuer" ><div id="img1"></div></a></li>
           <li><a  ><div  id="img2"></div></a></li>
           </ul>
       </div>
    </div>
    
    <div id="marco1"></div>
    <div id="menu-principal">
         <ul id="nav">
             <li id="indice"><a class="point"><img src="images/inicio.png" width="25" height="25"/>Inicio</a></li>
             <li><a class="point" ><img src="images/Eventos.png" width="25" height="25"/>Eventos</a></li>
             <li><a class="point"><img src="images/doit-im-y-remember-the-milk-gestiona-tus-tareas-tambien-en-android.png" width="25" height="25"/>Tareas</a></li>
             <li><a class="point"><img src="images/url_historial.png" width="25" height="25"/>Historial</a></li>
             <%manejo_usu mu = new manejo_usu();
             if(mu.mostrarAcceos(cod_usuario)) %>
             <li><a class="point" id="acceso"><img src="imagen/control_acceso.png" width="25" height="25"/>Accesos</a></li>
        
         </ul>
    </div>
      <div id="section">
       <div id="section_head">
           <p><strong>Usted está aqui:</strong> Inicio</p><div id="time"></div>
           
       </div>
       <div id="section_body">
       <div id="iframe">
             
           </div>
       </div>
       <div id="section_footer">
       </div>
    </div>
    <div id="footer">
    </div>
</div>
</body>
</html>