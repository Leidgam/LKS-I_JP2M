<%@page import="modelo.tipojob_parte"%>
<%@page import="java.util.LinkedList"%>
<%@page import="modelo.TipoJob"%>
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
</head>
<body>
<%
	manejo_TipoJob mtb = new manejo_TipoJob();
TipoJob tipo = mtb.getXId(request.getParameter("idTipoJob"));

for(int f=0; f<tipo.partes.size(); f++){
	%>
	<fieldset><legend><%=tipo.partes.get(f).parte.getCabecera() %></legend>
	<%for(int c=0; c<tipo.partes.get(f).items.size(); c++){
		
		%>
		<%=tipo.partes.get(f).items.get(c).item.getLabel() %>
		<%for(int k=0; k<tipo.partes.get(f).items.get(c).item.tipo_item.size(); k++){
			%><input type="<%=tipo.partes.get(f).items.get(c).item.tipo_item.get(k).control.getCodHtml()%>" id="<%=tipo.partes.get(f).items.get(c).item.getCod_item()%>"><%
			}%>
		}
		<%
	}%>
	</fieldset>
	<%
}
%>
</body>
</html>