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
	private String dni;
	private String clave;
	private String nombre;
	private String apellido_paterno;
	private String apellido_materno;
	private String direccion;
	private Tabla_Postal tabla_postal;
	private Sexo sexo;
	private String email;
	private Date fecha_ingreso;
	private Estado estado;
	private Tipo_Usuario tipo_usuario;
	private Usuario usuario;
	
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public String getClave() {
		return clave;
	}
	public void setClave(String clave) {
		this.clave = clave;
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
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	
	public Tabla_Postal getTabla_postal() {
		return tabla_postal;
	}
	public void setTabla_postal(Tabla_Postal tabla_postal) {
		this.tabla_postal = tabla_postal;
	}
	public Sexo getSexo() {
		return sexo;
	}
	public void setSexo(Sexo sexo) {
		this.sexo = sexo;
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
