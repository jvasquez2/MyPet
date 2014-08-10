package persistencia.mappers;

import java.util.List;

import bean.Cliente;

public interface ClienteMapper {
	public void registrarCliente(Cliente cliente) throws Exception;
	List<Cliente> buscar(Cliente cliente);
}
