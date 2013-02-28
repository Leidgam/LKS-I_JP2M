<%@page import="modelo.persona"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="control.manejo_persona"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script src="//localhost:8080/impr/js/jquery-1.8.2.w.js"></script>
<script type="text/javascript" src="//localhost:8080/impr/js/jquery-ui.js"></script>
<script type="text/javascript" src="//localhost:8080/impr/js/validate-ui.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	datosP();
	dial();
	 $("#dos").hide();
});
function dial(){
	 $("#dialogo").dialog({
		 autoOpen: false,
		   modal: true,
		   title: "Seleccione a una persona",
		   width: 550,
		   minWidth: 400,
		   maxWidth: 650,
		   show: "fold",
		   hide: "explode"
		});
}

function datosP(){
	 $.ajax({
		 type: "get",
		 url: "//localhost:8080/impr/personas",
		 success: function(data){
			 $("#dialogo").html(data);
		 }
	 });
}
function getPersona(cod){
	
	var cod_Persona = $("#cod_per"+cod).val();
	 dataString = "cod_Persona="+cod_Persona;
     
     //make the AJAX request, dataType is set to json
     //meaning we are expecting JSON data in response from the server
     $.ajax({
         type: "get",
         url: "//localhost:8080/impr/getPer",
         data: dataString,
         dataType: "json",
       
         //if received a response from the server
         success: function( data, textStatus, jqXHR) {
             //cargar datos
              	 $("#nombre").val(data.nombre);
              	$("#apellido").val(data.apellido);
              	//Sexo
                if(data.sexo==1){
              	 $("#Sm").attr("checked", true);
              	 }else{
              		 $("#Sf").attr("checked", true);
              	 }
              	//fecha de nacimiento
              	
              	$('#fecha_nac').attr("value", data.fecha_nac);
              	//mas datos
              	 $("#direccion").val(data.direccion);
              	 $("#email").val(data.email);
              	 $("#no_ident").val(data.no_ident);
              	 $("#distrito").val(data.distrito);
              	 $("#provincia").val(data.provincia);
              	 $("#departamento").val(data.departamento);
              	 $("#pais").val(data.pais);
             
                //selects
                $("#tipo_per option[value="+data.tipo_per+"]").attr("selected",true);
                $("#tipo_ident option[value="+data.tipo_ident+"]").attr("selected",true);

              //bloquear cajas de texto y todo
              	$("#nombre, #apellido, #Sm, #Sf, #fecha_nac, #direccion, #email, #no_ident, #distrito, #provincia, #departamento, #pais").each(function(){	
		$($(this)).attr('readonly', true);
});
            	
              	$("#Sm").attr("disabled","disabled");
              	$("#Sf").attr("disabled","disabled");
                $("#tipo_per").attr('disabled',true);
                $("#tipo_ident").attr('disabled',true);
              //al finalizar
                $("#dialogo").dialog('close');
         },
         
         //If there was no resonse from the server
         error: function(jqXHR, textStatus, errorThrown){
              console.log("Something really bad happened " + textStatus);
             alert('error');
         },
         
         //capture the request before it was sent to server
         beforeSend: function(jqXHR, settings){
             //adding some Dummy data to the request
             
             //disable the button until we get the response
           
         },
         
         //this is called after the response or error functions are finsihed
         //so that we can take some action
         complete: function(jqXHR, textStatus){
             //enable the button 
           
         }

     });  
	  }
function bPer(){

	datosP();

	 dial();

 $( "#dialogo" ).dialog( "open" );
 $("#tablePer").ingrid({ 
		
		height: 500,
		width: 400
	});
}


function obtener(){
	 var event_data = new Array();
	 event_data.push($("#nombre").val());
	 event_data.push($("#nombre").val());
	 
	 return event_data;
}
function nuevo(){
	$("#nombre, #apellido, #Sm, #Sf, #fecha_nac, #direccion, #email, #no_ident, #distrito, #provincia, #departamento, #pais").each(function(){
		$($(this)).val('');
		$($(this)).attr('readonly', false);
		
});

	$("#busc").val('Buscar');
	$("#limp").val('Limpiar');
	 $("#tipo_per option[value=0]").attr("selected",true);
     $("#tipo_ident option[value=0]").attr("selected",true);
	 $("#Sm").attr("checked", true);
	 $('#fecha_nac').attr("value", "");
	 $("#Sm").attr("disabled",false);
   	$("#Sf").attr("disabled",false);
     $("#tipo_per").attr('disabled',false);
     $("#tipo_ident").attr('disabled',false);
}
function sig(){
	
	var nombre = $("#nombre").val();
	var apellido = $("#apellido").val();  	
  	var sexo = $("input[name='sexo']:checked").val();
  	var fecha_nac = $('#fecha_nac').val();
  	var direccion = $("#direccion").val();
  	var email =  $("#email").val();
    var no_ident = $("#no_ident").val();
  	var distrito = $("#distrito").val();
  	var provincia = $("#provincia").val();
  	var departamento = $("#departamento").val();
  	var pais =  $("#pais").val();
  	var tipo_per = $("#tipo_per").val();
  	var tipo_ident = $("#tipo_ident").val();
 
  	var errores = 0;
	if(nombre==''){
     $("#nombre").css({'background-color': '#0033CC'});
     $("#nombre").attr('placeholder', 'Nombre Requerido');
     $("#nombre").keypress(function() {
    	 $("#nombre").css({'background-color': '#FFFFFF'});
    	 $("#nombre").attr('placeholder', 'Insertar Nombre');
     });
     errores++;
	}
	
	if(apellido==''){
	     $("#apellido").css({'background-color': '#0033CC'});
	     $("#apellido").attr('placeholder', 'Apellido Requerido');
	     $("#apellido").keypress(function() {
	    	 $("#apellido").css({'background-color': '#FFFFFF'});
	    	 $("#apellido").attr('placeholder', 'Insertar Apellido');
	     });
	     errores++;
    }
	alert(sexo);
   if(sexo=='M' | sexo=='F'){
	    
   }else{
	   alert("Elija el sexo");
	    errores++;
	    }
   
	if(fecha_nac==''){
	     $("#fecha_nac").css({'background-color': '#0033CC'});
	     $("#fecha_nac").keypress(function() {
	    	 $("#fecha_nac").css({'background-color': '#FFFFFF'});
	     });
	     errores++;
   }
	if(direccion==''){
	     $("#direccion").css({'background-color': '#0033CC'});
	     $("#direccion").attr('placeholder', 'Dirección Requerida');
	     $("#direccion").keypress(function() {
	    	 $("#direccion").css({'background-color': '#FFFFFF'});
	    	 $("#direccion").attr('placeholder', 'Dirección');
	     });
	     errores++;
		}
	
	if(email==''){
	     $("#email").css({'background-color': '#0033CC'});
	     $("#email").attr('placeholder', 'Em@il Requerido');
	     $("#email").keypress(function() {
	    	 $("#email").css({'background-color': '#FFFFFF'});
	    	 $("#email").attr('placeholder', 'Em@il');
	     });
	     errores++;
		}
	
 if(errores>0){
	 if(errores==1){
		 alert(errores+' dato incompleto');
	 }else{
		 alert(errores+' datos icompletos');
	 }
	 return 0;
 }
	
	
	 $("#uno").hide();
	 $("#dos").show();
	 
}
function atras(){
	 $("#dos").hide();
	 $("#uno").show();
	
}
</script>

</head>


<body onload="preparar()">
<div id="dialogo"></div>
<div id="usi_cuerpo">
<div id="uno">
    <datalist id="lista_nom">
      
      <option></option>      
     
    </datalist>
    
    
    <datalist id="lista_apell">
      
       
      <option></option>
       
      
    </datalist>
    <table id="usi_table">
         <tr>
            <td>Buscar:</td>
            <td><input type="search" name="buscar1" list="lista_nom" placeholder="Nombre"/></td>
           <td><input type="search" name="buscar2" list="lista_apell" placeholder="Apellido"/></td>
            <td><input id="busc" type="button" value="Buscar" onclick="bPer()"  /></td>
             <td><input id="limp" type="button" value="Limpiar" onclick="nuevo()"  /></td>
   
         </tr>
      </table>
      <fieldset style="width: 500px; margin-left: auto; margin-right: auto;"> <legend>Datos Personales</legend>
      <form action="" id="DatosPersona">
      <table> 
         <tr>
           <td>Nombre:</td>
           <td><input id="nombre" type="text" name="nombre" placeholder="Insertar Nombre" /></td>
           <td>Apellidos:</td>
           <td><input id="apellido" type="text" name="apellido" placeholder="Insertar Apellido"/></td>
         </tr>
         <tr>
         
           <td>Sexo:</td>
           <td>M<input id="Sm" type="radio" name="sexo" value="M" /> F <input id="Sf" type="radio" name="sexo" value="F"/></td>
           <td>Fecha Nac:</td>
           <td><input id="fecha_nac" type="date" name="fecha_nac" placeholder="Fecha Nacimiento"/></td>
         </tr>
         <tr>
           <td>Direccion:</td>
           <td colspan="3"><input id="direccion" name="direccion" placeholder="Dirección"/></td>
         </tr>
          <tr>
            <td>Tipo Persona:</td>
            <td>
            <select id="tipo_per" name="tipo_persona">
               <option value="0">Seleccionar</option>
               <option value="1">Normal</option>
               <option value="2">Juridica</option>
            </select>
            </td>
            <td>Em@il</td>
            <td><input id="email" type="email" name="email" placeholder="Em@il"/></td>
         </tr>
         <tr>
            <td>Tipo Identif:</td>
            <td>
            <select id="tipo_ident" name="tipo_ident">
               <option value="0">Seleccionar</option>
               <option value="1">DNI</option>
               <option value="2">Pasaporte</option>
               <option value="3">RUC</option>
            </select>
            </td>
            <td>Nº Identif:</td>
            <td><input type="text" id="no_ident" name="no_ident" placeholder="Intentificacion"/></td>
         </tr>
          <tr>
            <td>Distrito</td>
            <td><input id="distrito" type="text" name="distrito" placeholder="Distrito"/></td>
            <td>Provincia</td>
            <td><input id="provincia" type="text" name="provincia" placeholder="Provincia"/></td>
         </tr>
         <tr>
            <td>Departamento:</td>
            <td><input id="departamento" type="text" name="departamento" placeholder="Departamento"/></td>
            <td>Pais:</td>
            <td><input id="pais" type="text" name="pais" placeholder="Pais"/></td>
         </tr>
         
    </table>
    </form>
    </fieldset>
    <input type="button" id="sig" value="Siguiente" onclick="sig()">
    </div>
    <div id="dos">
    <fieldset> <legend>Datos de Usuario</legend>
    <table>
    <tr>
    <td>Login:</td>  <td><input id="login" name="login" placeholder="Ingrese Login" /> </td>
    </tr>
    <tr>
    <td>Password:</td>  <td><input id="passw" name="passw" placeholder="Contraseña" /> </td>
    </tr>
     <tr>
    <td>Repetir Password:</td>  <td><input id="Rpassw" name="Rpassw" placeholder="R Contraseña" /> </td>
    </tr>
    </table>
    </fieldset>
       <input type="button" id="atras" value="Atras" onclick="atras()">
    </div>
</div>

</body>
</html>