function ModDoc(){
	 var nombre = $('#nombre').val();
	 var apellido = $('#apellido').val();
	 var login = $('#login').val();
	 var passw = $('#passw').val();
	 var dpassw = $('#r-passw').val();
	 var idPersona = $('#idPersona').val();
	 var idDocente = $('#idDocente').val();
	 dataString = "nombre="+nombre+"&apellido="+apellido+"&login="+login+"&passw="+passw+"&idPersona="+idPersona+"&idDocente="+idDocente;
 
	 $.ajax({
		 type: "post",
		 url: "editdoc",
		 data: dataString,
		 success: function(data){
			 $("#page-bgtop").html("<div align='center'><img alt='' src='//localhost:8080/examen/images/tick.png' width='60' height='60' align=''> <a>DOCENTE MODIFICADO</a></div>" );
		 }
	 })
	
	
	
}

