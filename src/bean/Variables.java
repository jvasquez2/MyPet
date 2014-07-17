package bean;

import java.io.Serializable;

public class Variables implements Serializable {

	private int id;
	private String razon_social;
	private Number porcentaje_igv;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRazon_social() {
		return razon_social;
	}
	public void setRazon_social(String razon_social) {
		this.razon_social = razon_social;
	}
	public Number getPorcentaje_igv() {
		return porcentaje_igv;
	}
	public void setPorcentaje_igv(Number porcentaje_igv) {
		this.porcentaje_igv = porcentaje_igv;
	}
	
	
}
