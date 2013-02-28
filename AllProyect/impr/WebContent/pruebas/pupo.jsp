<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="js/jquery-1.8.2.w.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	//Petición AJAX, que envía dos parámetros y recibe la respuesta con JSON
	$("#envioPeticion").click(function(e){
		e.preventDefault();
		$.post("jqueryRate", {param1:$("#entrada").val(),param2:$("#entrada").val()+"-dos"} ,
                   function(response){
                        var i = 0;
                        var textoSalida = "";

                        for (i=0;i&lt;response.length;i++)
                        {
                            textoSalida = textoSalida + response[i].nombre + &quot; - &quot; + response[i].edad;
                            textoSalida = textoSalida + &quot;<br />";
                        }
                        alert(textoSalida);
                        $("#vueltaServidor").html(textoSalida);    //Pega lo recibido en el div
                    }, "json");
	});
});

</script>
</head>
<body>
<form>
	<label for="entrada">Pon lo que quieras:</label>
	<a href="#" id="envioPeticion">Envía la petición</a>
</form>

</body>
</html>