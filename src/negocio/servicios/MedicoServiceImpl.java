package negocio.servicios;

import org.apache.ibatis.session.SqlSession;

import persistencia.mappers.MedicoMapper;
import util.MyBatisUtil;
import bean.Medico;

public class MedicoServiceImpl implements MedicoService {

	@Override
	public void registrarMedico(Medico medico) throws Exception {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		MedicoMapper medicoMapper = session.getMapper(MedicoMapper.class);
		medicoMapper.registrarMedico(medico);

		session.commit();
		session.close();

	}

}
