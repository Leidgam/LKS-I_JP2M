<%@page import="modelo.TipoJob"%>
<%@page import="java.util.LinkedList"%>
<%@page import="control.manejo_TipoJob"%>
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
<script type="text/javascript" src="//localhost:8080/impr/js/jquery-ui.js"></script>
<script type="text/javascript">
function cFormularioJob(){
	
var id =  $("#tipo_job").val();
$("#cuerpo_job").load('//localhost:8080/impr/ventas/auxiliar/cuerpo_job.jsp?idTipoJob='+id);
}

</script>
</head>
<body onload="cFormularioJob()">
<%manejo_TipoJob mtb = new manejo_TipoJob();
LinkedList<TipoJob> lista = mtb.Listar();
%>
<select id="tipo_job" onchange="cFormularioJob()">
<%for(int f=0; f<lista.size(); f++){
	%><option value="<%= lista.get(f).getCod_TipoJob()%>"><%=lista.get(f).getNombre() %></option>  <%
}
	%>
</select>
<div id="cuerpo_job" style="width: 952px; height: 100px; ">
</div>
</body>
</html>