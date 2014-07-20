package negocio.servicios;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import persistencia.mappers.SexoMapper;
import util.MyBatisUtil;
import bean.Sexo;

public class SexoServiceImpl implements SexoService {

	@Override
	public List<Sexo> obtenerTodos() throws Exception {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		SexoMapper sexoMaper = session.getMapper(SexoMapper.class);
        List<Sexo> tipos=sexoMaper.obtenerTodos();
        
        session.close();
        return tipos;
	}

}
