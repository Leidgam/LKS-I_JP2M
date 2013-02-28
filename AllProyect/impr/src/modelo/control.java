package modelo;

public class control {

	String cod_control;
	String nombre;
	String codHtml;
	public String getCod_control() {
		return cod_control;
	}
	public void setCod_control(String cod_control) {
		this.cod_control = cod_control;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getCodHtml() {
		return codHtml;
	}
	public void setCodHtml(String codHtml) {
		this.codHtml = codHtml;
	}
	public control(String cod_control, String nombre, String codHtml) {
		super();
		this.cod_control = cod_control;
		this.nombre = nombre;
		this.codHtml = codHtml;
	}
	
	
}
