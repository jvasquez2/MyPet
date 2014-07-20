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
			ActionContext.getContext().getSession().put("usuario",usuario);
		}else{
			addActionError(getText("error.usuario.noexiste", new String[]{usuario.getCodigo().toString()}));
			return ERROR;
		}
		
		return SUCCESS;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	
	

}
