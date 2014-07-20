package negocio.servicios;

import java.util.Map;

import bean.Usuario;

public interface UsuarioService {

	public Map<String, Object> buscarUsuario(Usuario usuario) throws Exception;
}
