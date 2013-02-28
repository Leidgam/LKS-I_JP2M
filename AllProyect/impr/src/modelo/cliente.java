package modelo;

public class cliente {
  private String cod_persona;
  private String cod_usuario;
  private int estado;
  
  public cliente(){
	  
  }

public String getCod_persona() {
	return cod_persona;
}

public void setCod_persona(String cod_persona) {
	this.cod_persona = cod_persona;
}

public String getCod_usuario() {
	return cod_usuario;
}

public void setCod_usuario(String cod_usuario) {
	this.cod_usuario = cod_usuario;
}

public int getEstado() {
	return estado;
}

public void setEstado(int estado) {
	this.estado = estado;
}
  
}
