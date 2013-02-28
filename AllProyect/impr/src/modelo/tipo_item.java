package modelo;

public class tipo_item {

	public control control;
	Item item;
	public control getControl() {
		return control;
	}
	public void setControl(control control) {
		this.control = control;
	}
	public Item getItem() {
		return item;
	}
	public void setItem(Item item) {
		this.item = item;
	}
	public tipo_item(modelo.control control, Item item) {
		super();
		this.control = control;
		this.item = item;
	}
	
}
