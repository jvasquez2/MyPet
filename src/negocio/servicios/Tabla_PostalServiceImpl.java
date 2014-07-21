package negocio.servicios;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import persistencia.mappers.Tabla_PostalMapper;
import util.MyBatisUtil;
import bean.Tabla_Postal;

public class Tabla_PostalServiceImpl implements Tabla_PostalService {

	@Override
	public List<Tabla_Postal> obtenerTodos() throws Exception {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		Tabla_PostalMapper tabla_postalMaper = session.getMapper(Tabla_PostalMapper.class);
        List<Tabla_Postal> tipos = tabla_postalMaper.obtenerTodos();
        
        session.close();
        return tipos;
	}

}
