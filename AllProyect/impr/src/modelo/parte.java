package modelo;

public class parte {

	String cod_parte;
	String cabecera;
	public String getCod_parte() {
		return cod_parte;
	}
	public void setCod_parte(String cod_parte) {
		this.cod_parte = cod_parte;
	}
	public String getCabecera() {
		return cabecera;
	}
	public void setCabecera(String cabecera) {
		this.cabecera = cabecera;
	}
	public parte(String cod_parte, String cabecera) {
		super();
		this.cod_parte = cod_parte;
		this.cabecera = cabecera;
	}
	public parte(){
		
	}
	
}
