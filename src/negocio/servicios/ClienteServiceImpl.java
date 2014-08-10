package negocio.servicios;

import java.util.List;

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

	@Override
	public List<Cliente> buscar(Cliente cliente) throws Exception {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		ClienteMapper clienteMapper = session.getMapper(ClienteMapper.class);
		List<Cliente> clientes = clienteMapper.buscar(cliente);
		session.close();
		return clientes;
	}

}
