package bean;

import java.io.Serializable;

public class Boleta implements Serializable {

	private int numero;
	private String dni;
	private String razon_social;
	private Number brutos;
	private Number descuento;
	private Number igv;
	private Number valor_venta;
	private Cliente cliente;
	
	public int getNumero() {
		return numero;
	}
	public void setNumero(int numero) {
		this.numero = numero;
	}
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public String getRazon_social() {
		return razon_social;
	}
	public void setRazon_social(String razon_social) {
		this.razon_social = razon_social;
	}
	public Number getBrutos() {
		return brutos;
	}
	public void setBrutos(Number brutos) {
		this.brutos = brutos;
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
	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
}
