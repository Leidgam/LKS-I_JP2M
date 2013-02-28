<%@page import="modelo.acceso"%>
<%@page import="java.util.LinkedList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
    <%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="control.manejo_cliente"%>
<%@page import="control.manejo_usu"%>
<%@page import="java.sql.SQLException"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
HttpSession sesion = request.getSession(true);
String cod_usuario = null;
String ok = "funciona mal 2";
String okyyyy = "funciona mal 4";
String okayy = "funciona mal 5";
String ok1 = "fuciona mal 1";
String ok2 = "fuciona mal 3";
String usuario= (String)sesion.getAttribute("login");
if(usuario == null){
	response.sendRedirect("login.jsp");
}
else{
	cod_usuario = sesion.getAttribute("cod").toString();
}
%>
<html>
<head>
<style type="text/css">
ul{
list-style: none;


}
ul li #p {
float: left;
display: block;
cursor: pointer;
margin: 8px;

}

</style>

<script type="text/javascript">

$(document).ready(function() {
    $("fieldset.collapsible").collapse();
    $("fieldset.collapsibleClosed").collapse( { closed : true } );
});
</script>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div style="height: 550px; width: 950px">
<%


manejo_usu mu = new manejo_usu();
LinkedList<acceso> accs = mu.Accesos(cod_usuario);
%>

<ul id="puo">

<%
String gestion  = "";
for(int x=0; x<6; x++){
	if(mu.calcularAccesos(accs, x+1)!=0){
	
		if((x+1)==1){
			gestion = "Gestión de Usuarios";
		}
		if((x+1)==2){
			gestion = "Gestión de Clientes";
		}
		if((x+1)==3){
			gestion = "Gestión de Jobs";
		}
		if((x+1)==4){
			gestion = "Gestión de Pedidos";
		}
		if((x+1)==5){
			gestion = "Gestión de Proformas";
		}
		if((x+1)==6){
			gestion = "Gestión de Empleados";
		}
		
		
		
		
	%> <fieldset  id="field<%=(x+1) %>" class="coolfieldset" > <legend><%=gestion %></legend><div>
	<%
	
	for(int f=0; f<accs.size();f++){
		if(accs.get(f).getTipo()==(x+1)){
		%>
		
		<li class="">
	
		
		<a id="p" onclick="redirect('<%out.print(accs.get(f).getUrl()); %>')" >
		<table>
		<tr>
		<td align="center">
		<img alt="5px" src="//localhost:8080/impr/images/accesos/<%=accs.get(f).getIcon()%>.png">
		</td>
		</tr>
		<tr>
		<td style="width: 50px;" align="center">
		<%out.print(accs.get(f).getTitulo());%> 
		</td></tr>
			</table>
			
		</a>
	
		</li>	
		
			<% 
		}
	}
	%></div></fieldset>
	
	
	<%
	}
	}

%>
</ul>
</div>
<script src="//localhost:8080/impr/js/jquery.js"></script>
<script src="//localhost:8080/impr/js/jquery.coolfieldset.js"></script>
<script>

$('#field1').coolfieldset();
$('#field2').coolfieldset();
$('#field3').coolfieldset();
$('#field4').coolfieldset();
$('#field5').coolfieldset();
$('#field6').coolfieldset();
		
	</script>
</body>
</html>