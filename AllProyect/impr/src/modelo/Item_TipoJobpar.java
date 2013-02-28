package modelo;

public class Item_TipoJobpar {

	public Item item;
	tipojob_parte tipo_jobparte;
	public Item getItem() {
		return item;
	}
	public void setItem(Item item) {
		this.item = item;
	}
	public tipojob_parte getTipo_jobparte() {
		return tipo_jobparte;
	}
	public void setTipo_jobparte(tipojob_parte tipo_jobparte) {
		this.tipo_jobparte = tipo_jobparte;
	}
	public Item_TipoJobpar(Item item, tipojob_parte tipo_jobparte) {
		super();
		this.item = item;
		this.tipo_jobparte = tipo_jobparte;
	}
	
	
}
