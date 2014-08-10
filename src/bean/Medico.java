package bean;

import java.io.Serializable;
import java.util.Date;

public class Medico implements Serializable {
	
	private Usuario usuario;
	private String nombre;
	private String apellido_paterno;
	private String apellido_materno;
	private Tabla_Postal tabla_postal;
	private Sexo sexo;
	private String direccion;
	
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
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public Usuario getUsuario() {
		return usuario;
	}
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
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
	

}
