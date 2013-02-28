package modelo;

import java.util.LinkedList;

public class Item {

	String cod_item;
	String descripcion;
	String label;
	public String getCod_item() {
		return cod_item;
	}
	public void setCod_item(String cod_item) {
		this.cod_item = cod_item;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public Item(String cod_item, String descripcion, String label) {
		super();
		this.cod_item = cod_item;
		this.descripcion = descripcion;
		this.label = label;
	}
	public LinkedList<tipo_item> tipo_item;
}
