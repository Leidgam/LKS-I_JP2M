package modelo;

import java.util.LinkedList;

public class tipojob_parte {

	int orden;
	public parte parte;
	TipoJob tipoJob;
	public int getOrden() {
		return orden;
	}
	public void setOrden(int orden) {
		this.orden = orden;
	}
	public parte getParte() {
		return parte;
	}
	public void setParte(parte parte) {
		this.parte = parte;
	}
	public TipoJob getTipoJob() {
		return tipoJob;
	}
	public void setTipoJob(TipoJob tipoJob) {
		this.tipoJob = tipoJob;
	}
	public tipojob_parte(int orden, modelo.parte parte, TipoJob tipoJob) {
		super();
		this.orden = orden;
		this.parte = parte;
		this.tipoJob = tipoJob;
	}
	public tipojob_parte(){
	
	}
	public LinkedList<Item_TipoJobpar> items;
	
}
