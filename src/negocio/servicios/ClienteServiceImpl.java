package negocio.servicios;

import org.apache.ibatis.session.SqlSession;

import persistencia.mappers.ClienteMapper;
import util.MyBatisUtil;
import bean.Cliente;

public class ClienteServiceImpl implements ClienteService {

	@Override
	public void registrarCliente(Cliente cliente) throws Exception {
		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		ClienteMapper clienteMapper=session.getMapper(ClienteMapper.class);
		clienteMapper.registrarCliente(cliente); 
		
        session.commit();
		session.close();
		
	}

}
