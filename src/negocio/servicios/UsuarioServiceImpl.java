package negocio.servicios;

import java.util.HashMap;
import util.Constantes;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import persistencia.mappers.UsuarioMapper;
import util.MyBatisUtil;
import bean.Usuario;

public class UsuarioServiceImpl implements UsuarioService {

	@Override
	public Map<String, Object> buscarUsuario(Usuario usuario) throws Exception {
		Map<String, Object> dto = new HashMap<String, Object>();
		dto.put(Constantes.USUARIO_EXISTE,Boolean.FALSE);
		
		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		UsuarioMapper usuarioMapper=session.getMapper(UsuarioMapper.class);
		usuario = usuarioMapper.buscarUsuario(usuario); 
        
		if(usuario!=null){
			dto.put(Constantes.USUARIO_EXISTE,Boolean.TRUE);
			dto.put(Constantes.OBJETO_USUARIO, usuario);
		}else{
			return dto;
		}
		
        session.close();
        return dto;
	}

}
