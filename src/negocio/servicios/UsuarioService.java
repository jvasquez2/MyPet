package negocio.servicios;

import java.util.Map;

import bean.Usuario;

public interface UsuarioService {

	public Map<String, Object> buscarUsuario(Usuario usuario) throws Exception;
	public void registrarUsuario(Usuario usuario) throws Exception;
	public Map<String, Object> buscarUsuarioSinClave(Usuario usuario) throws Exception;
}
