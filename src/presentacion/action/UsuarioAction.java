package presentacion.action;

import java.util.Map;

import util.Constantes;
import negocio.servicios.UsuarioService;
import negocio.servicios.UsuarioServiceImpl;
import bean.Usuario;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UsuarioAction extends ActionSupport {
	
	private Usuario usuario;
	
	
	public String buscarUsuario() throws Exception{
		
		UsuarioService usuarioService=new UsuarioServiceImpl();
		
		Map<String, Object> dto=usuarioService.buscarUsuario(usuario);
		
		if((Boolean)dto.get(Constantes.USUARIO_EXISTE)){
			usuario =(Usuario) dto.get(Constantes.OBJETO_USUARIO);

			System.out.println("USUARIO : ");
			System.out.println(usuario.getDni());
			System.out.println(usuario.getNombre());
			System.out.println(usuario.getApellido_paterno());
			System.out.println(usuario.getClave());
			System.out.println(usuario.getDireccion());
			System.out.println(usuario.getEmail());
			System.out.println(usuario.getFecha_ingreso());
			System.out.println(usuario.getSexo().getId());
			System.out.println(usuario.getSexo().getDescripcion());
			System.out.println(usuario.getTipo_usuario().getId());
			System.out.println(usuario.getTipo_usuario().getDescripcion());
			System.out.println(usuario.getTabla_postal().getCodigo());
			System.out.println(usuario.getTabla_postal().getDescripcion());
			
			
			ActionContext.getContext().getSession().put("usuario",usuario);
		}else{
			addActionError(getText("error.usuario.noexiste", new String[]{usuario.getDni().toString()}));
			return ERROR;
		}
		
		return SUCCESS;
	}
	
	public String registrarUsuario() throws Exception{
		
		UsuarioService usuarioService=new UsuarioServiceImpl();
		
		Map<String, Object> dto = usuarioService.buscarUsuarioSinClave(usuario);
		
		if(!(Boolean)dto.get(Constantes.USUARIO_EXISTE)){
			usuarioService.registrarUsuarioCliente(usuario);
			return SUCCESS;
		} else {
			addActionError(getText("error.usuario.existente"));
			return ERROR;
		}
	}
 
	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	
	

}
