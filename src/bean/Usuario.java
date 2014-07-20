package bean;

import java.io.Serializable;
import java.util.Date;

public class Usuario implements Serializable {

	public Usuario getUsuario() {
		return usuario;
	}
	public void setUsuario(Usuario usuario) { 
		this.usuario = usuario;
	}
	private String codigo;
	private String clave;
	private Date fecha_ingreso;
	private Estado estado;
	private Tipo_Usuario tipo_usuario;
	private Usuario usuario;
	

	public String getCodigo() {
		return codigo;
	}
	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
	public String getClave() {
		return clave;
	}
	public void setClave(String clave) {
		this.clave = clave;
	}
	public Date getFecha_ingreso() {
		return fecha_ingreso;
	}
	public void setFecha_ingreso(Date fecha_ingreso) {
		this.fecha_ingreso = fecha_ingreso;
	}
	public Estado getEstado() {
		return estado;
	}
	public void setEstado(Estado estado) {
		this.estado = estado;
	}
	public Tipo_Usuario getTipo_usuario() {
		return tipo_usuario;
	}
	public void setTipo_usuario(Tipo_Usuario tipo_usuario) {
		this.tipo_usuario = tipo_usuario;
	}
	
}
