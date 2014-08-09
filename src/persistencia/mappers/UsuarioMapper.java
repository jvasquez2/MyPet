package persistencia.mappers;

import bean.Usuario;

public interface UsuarioMapper {
	public Usuario buscarUsuario(Usuario usuario) throws Exception;
	public void registrarUsuario(Usuario usuario) throws Exception;
	public Usuario buscarUsuarioSinClave (Usuario usuario) throws Exception;
}
