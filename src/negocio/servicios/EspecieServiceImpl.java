package negocio.servicios;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import persistencia.mappers.EspecieMapper;
import util.MyBatisUtil;
import bean.Especie;

public class EspecieServiceImpl implements EspecieService {

	@Override
	public List<Especie> obtenerTodos() throws Exception {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		EspecieMapper especieMapper = session.getMapper(EspecieMapper.class);
        List<Especie> tipos = especieMapper.obtenerTodos();
        
        session.close();
        return tipos;
	}

}
