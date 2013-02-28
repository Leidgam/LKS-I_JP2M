package modelo;

public class acceso {
 String cod_acceso;
 String titulo;
 String url;
 String icon;
 int estado;
 int tipo;
 
 
 public int getTipo() {
	return tipo;
}

public void setTipo(int tipo) {
	this.tipo = tipo;
}

public String getIcon() {
	return icon;
}

public void setIcon(String icon) {
	this.icon = icon;
}

public acceso(){
	 
 }

public String getCod_acceso() {
	return cod_acceso;
}

public void setCod_acceso(String cod_acceso) {
	this.cod_acceso = cod_acceso;
}

public String getTitulo() {
	return titulo;
}

public void setTitulo(String titulo) {
	this.titulo = titulo;
}

public String getUrl() {
	return url;
}

public void setUrl(String url) {
	this.url = url;
}

public int getEstado() {
	return estado;
}

public void setEstado(int estado) {
	this.estado = estado;
}
 
}
