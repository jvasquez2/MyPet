package bean;

import java.io.Serializable;

public class Producto implements Serializable {

	private String codigo;
	private String descripcion;
	private Number stock_actual;
	private Number stock_disponible;
	private Number precio;
	public String getCodigo() {
		return codigo;
	}
	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public Number getStock_actual() {
		return stock_actual;
	}
	public void setStock_actual(Number stock_actual) {
		this.stock_actual = stock_actual;
	}
	public Number getStock_disponible() {
		return stock_disponible;
	}
	public void setStock_disponible(Number stock_disponible) {
		this.stock_disponible = stock_disponible;
	}
	public Number getPrecio() {
		return precio;
	}
	public void setPrecio(Number precio) {
		this.precio = precio;
	}
	
	
}
