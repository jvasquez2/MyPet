package negocio.servicios;

import java.util.List;

import bean.Cliente;

public interface ClienteService {
	public void registrarCliente(Cliente cliente) throws Exception;
	
	public List<Cliente> buscar(Cliente cliente) throws Exception;

}
