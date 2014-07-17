package bean;

import java.io.Serializable;
import java.util.Date;

public class Usuario implements Serializable {

	private String codigo;
	private String nombre;
	private String apellido_paterno;
	private String apellido_materno;
	private String email;
	private Date fecha_ingreso;
	private Estado estado;;
	private Tipo_Usuario tipo_usuario;
	

	public String getCodigo() {
		return codigo;
	}
	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido_paterno() {
		return apellido_paterno;
	}
	public void setApellido_paterno(String apellido_paterno) {
		this.apellido_paterno = apellido_paterno;
	}
	public String getApellido_materno() {
		return apellido_materno;
	}
	public void setApellido_materno(String apellido_materno) {
		this.apellido_materno = apellido_materno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
