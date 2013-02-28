<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/style3.css"/>
</head>
<body>
<div id="wraper">
<P id="usu_p">MODIFICA TU USUARIO</P>
 <form method="get" action="s_usuario">
   <table id="usu_table">
       <tr>
          <td class="td1">Usuario:</td><td class="td2"><input id="input2" type="text" name="usuario" placeholder='Ingresar usuario' required="required"/></td>
       </tr>
        <tr>
          <td class="td1">Nuevo Usuario:</td><td class="td2"><input id="input2" type="text" name="n-usuario" placeholder='Ingresar Nuevo' required="required"/>*</td>
       </tr>
        <tr>
          <td class="td1">Contraseña:</td><td class="td2"><input id="input2" type="password" name="contraseña" maxlength="8"  placeholder='Ingresar Contraseña' required="required"/></td>
       </tr>
       <tr>
        <td class="td1">Nueva Contraseña:</td><td class="td2"><input id="input2" type="text" name="nombre" maxlength="9" placeholder='Ingresar codigo' required="required"/>*</td>
       </tr>
        <tr>
          <td align="right" colspan="2"><input id="boton" type="submit" name="boton" value="Enviar" /></td>
       </tr>
   </table>
 </form>
 </div>
</body>
</html>