package bean;

import java.io.Serializable;

public class Detalle_Boleta implements Serializable {

	private Boleta boleta;
	private int id;
	private Producto producto;
	private String descripcion;
	private int cantidad;
	private Number bruto;
	private Number descuento;
	private Number igv;
	private Number valor_venta;
	
	public Boleta getBoleta() {
		return boleta;
	}
	public void setBoleta(Boleta boleta) {
		this.boleta = boleta;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Producto getProducto() {
		return producto;
	}
	public void setProducto(Producto producto) {
		this.producto = producto;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public int getCantidad() {
		return cantidad;
	}
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}
	public Number getBruto() {
		return bruto;
	}
	public void setBruto(Number bruto) {
		this.bruto = bruto;
	}
	public Number getDescuento() {
		return descuento;
	}
	public void setDescuento(Number descuento) {
		this.descuento = descuento;
	}
	public Number getIgv() {
		return igv;
	}
	public void setIgv(Number igv) {
		this.igv = igv;
	}
	public Number getValor_venta() {
		return valor_venta;
	}
	public void setValor_venta(Number valor_venta) {
		this.valor_venta = valor_venta;
	}
}
