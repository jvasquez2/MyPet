package presentacion.action;

import java.util.Map;

import util.Constantes;
import negocio.servicios.ClienteService;
import negocio.servicios.ClienteServiceImpl;
import negocio.servicios.MedicoService;
import negocio.servicios.MedicoServiceImpl;
import negocio.servicios.UsuarioService;
import negocio.servicios.UsuarioServiceImpl;
import bean.Cliente;
import bean.Medico;
import bean.Usuario;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UsuarioAction extends ActionSupport {
	
	private Usuario usuario;
	
	
	public String buscarUsuario() throws Exception{
		
		UsuarioService usuarioService=new UsuarioServiceImpl();
		
		Map<String, Object> dtoUsuarioSinClave = usuarioService.buscarUsuarioSinClave(usuario);
		
		if((Boolean)dtoUsuarioSinClave.get(Constantes.USUARIO_EXISTE)){
			
			Map<String, Object> dtoUsuarioConClave = usuarioService.buscarUsuario(usuario);
			
			if((Boolean)dtoUsuarioConClave.get(Constantes.USUARIO_EXISTE)){
				usuario =(Usuario) dtoUsuarioConClave.get(Constantes.OBJETO_USUARIO);
				ActionContext.getContext().getSession().put("usuario",usuario);
			} else {
				addActionError(getText("error.usuario.claveerrada"));
				return ERROR;
			}
		}else{
			addActionError(getText("error.usuario.noexiste", new String[]{usuario.getDni().toString()}));
			return ERROR;
		}
		
		return SUCCESS;
	}
	
	public String registrarUsuario() throws Exception{
		
		UsuarioService usuarioService=new UsuarioServiceImpl();
		ClienteService clienteService=new ClienteServiceImpl();
		MedicoService medicoService = new MedicoServiceImpl();
		
		Map<String, Object> dto = usuarioService.buscarUsuarioSinClave(usuario);
		
		if(!(Boolean)dto.get(Constantes.USUARIO_EXISTE)){
			usuarioService.registrarUsuario(usuario);
			if (usuario.getTipo_usuario().getId() == 1){
				Cliente cliente = new Cliente();
				cliente.setUsuario(usuario);
				cliente.setApellido_paterno(usuario.getApellido_paterno());
				cliente.setApellido_materno(usuario.getApellido_materno());
				cliente.setDireccion(usuario.getDireccion());
				cliente.setEmail(usuario.getEmail());
				cliente.setNombre(usuario.getNombre());
				cliente.setSexo(usuario.getSexo());
				cliente.setTabla_postal(usuario.getTabla_postal());
				clienteService.registrarCliente(cliente);
				//***************
			}
			else {
				Medico medico = new Medico();
				medico.setUsuario(usuario);
				medico.setApellido_materno(usuario.getApellido_materno());
				medico.setApellido_paterno(usuario.getApellido_paterno());
				medico.setNombre(usuario.getNombre());
				medico.setDireccion(usuario.getDireccion());
				medico.setSexo(usuario.getSexo());
				medico.setTabla_postal(usuario.getTabla_postal());
				medicoService.registrarMedico(medico);
			}
			
			if (ActionContext.getContext().getSession().get("usuario") == null){
				return SUCCESS;
			}
			else {
				return "SESION";
			}
		} else {
			addActionError(getText("error.usuario.existente"));
			return ERROR;
		}
	}
	
	public String cerrarSesion() throws Exception{
		ActionContext.getContext().getSession().clear();
		return SUCCESS;
	}
 
	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	
	

}
