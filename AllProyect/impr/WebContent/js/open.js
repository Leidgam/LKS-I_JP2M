$(document).ready(function() {
	var temp = 1;
	 $("#iframe").load('//localhost:8080/impr/inicio.jsp');
	$("#img2").click(function(event) {
		  $("#iframe").load('//localhost:8080/impr/gestion/myconfig.jsp');
});
	$("#acceso").click(function(event) {
		  $("#iframe").load('//localhost:8080/impr/ac.jsp');	
		  if(temp==1){
			  $("#iframe").load('//localhost:8080/impr/ac.jsp');
			  temp=0;
		  }
		 
});
	$("#indice").click(function(event) {
		  $("#iframe").load('//localhost:8080/impr/inicio.jsp');
});
});
