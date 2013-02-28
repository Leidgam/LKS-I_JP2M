function bPer(){
		  
	
			
			
		  
}
function avisar(){
	alert('pupo');
	
	   $("#dialogo").dialog({
	   modal: true,
	   title: "Seleccione a una persona",
	   width: 550,
	   minWidth: 400,
	   maxWidth: 650,
	   show: "fold",
	   hide: "fold"
	});
}
function rellenar(nombre){
	$("#nombre").val(nombre);
	 
	 $('#nombre').attr('readonly', true);
	 $("#dialogo").dialog('close');
}

function ver(){
	 $("#dialog-form").html('<p class="validateTips">'+
			 'Registra tu Numero *</p>  '+
			' <fieldset id="c_fieldset"> '+
	 '<label for="tipo" id="c_label">Tipo</label> '+
	 '<select name="tipo" id="tipo" >'+
	 '<option value="Celular">Celular</option>'+  
	 '<option value="Telefono">Telefono</option>'+ 
	 '<option value="Nextel">Nextel</option> </select>'+ 
	 '<!--- <input type="text" name="tipo" id="tipo" class="text ui-widget-content ui-corner-all" />-->'+
	 '<label for="numero">Numero</label> '+
	 '<input type="text" name="numero" id="numero" value="" class="text ui-widget-content ui-corner-all" />'+
	 '<input type="button" value="registrar" />'+
	 '</fieldset> ');
	 $("#dialog-form").dialog({
		   modal: true,
		   title: "Caja con opciones",
		   width: 550,
		   minWidth: 400,
		   maxWidth: 650,
		   show: "fold",
		   hide: "explode" ,
	      overflow: "hidden"
		});
}