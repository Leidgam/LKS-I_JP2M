<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style1.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="cuerpo">
    <div id="logeo">
    <form action="logeo" method="post">
      <table>
         <tr>
            <td colspan="2" id="titulo">System House Print</td>
         </tr>
         
         <tr>
            <td colspan="2" id="subtitulo"><img src="imagen/lock.png" width="25" height="25"  />Ingrese su usuario y contraseña</td>
         </tr>
         
         <tr>
            <td id="texto">USUARIO</td>
            <td id="text"><input type="text" name="usuario" placeholder="Ingresar usuario" required="required"/></td>
         </tr>
         
         <tr>
            <td id="texto">CONTRASEÑA</td>
            <td id="text"><input type="password" name="contraseña" placeholder="Ingresar contraseña" required="required"/></td>
         </tr>
         
         <tr>
            <td id="boton" align="right"><input id="cc" type="reset" name="ingresar" value="LIMPIAR"/></td>
            <td id="boton" align="center"><input id="cc" type="submit" name="limpiar" value="INGRESAR"/></td>
         </tr>
         
         <tr>
            <td colspan="2" id="pie"><a href="http://www.upeu.edu.pe/">Universidad Peruana Union</a></td>
         </tr>
      </table>
      </form>
    </div>
</div>
</body>
</html>