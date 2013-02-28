package modelo;

import java.util.LinkedList;

public class TipoJob {

	String cod_TipoJob;
	String nombre;
	String descripcion;
	int estado;
	
	public TipoJob(){
		
	}
	
	
	public TipoJob(String cod_TipoJob, String nombre, String descripcion,
			int estado, LinkedList<tipojob_parte> partes) {
		super();
		this.cod_TipoJob = cod_TipoJob;
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.estado = estado;
		this.partes = partes;
	}


	public String getCod_TipoJob() {
		return cod_TipoJob;
	}
	public void setCod_TipoJob(String cod_TipoJob) {
		this.cod_TipoJob = cod_TipoJob;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public int getEstado() {
		return estado;
	}
	public void setEstado(int estado) {
		this.estado = estado;
	}
	
	public LinkedList<tipojob_parte> partes;

	
	
}
