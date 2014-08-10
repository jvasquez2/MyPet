package presentacion.action;

import java.util.List;

import negocio.servicios.ClienteService;
import negocio.servicios.ClienteServiceImpl;
import bean.Cliente;

import com.opensymphony.xwork2.ActionSupport;

public class ClienteAction extends ActionSupport {
	
	private List<Cliente> clientes;
	private Cliente cliente = new Cliente();
	
	private ClienteService clienteService = new ClienteServiceImpl();
	
	
	public List<Cliente> getClientes() {
		return clientes;
	}

	public void setClientes(List<Cliente> clientes) {
		this.clientes = clientes;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	
	
			
	public String buscar() throws Exception{
		clientes = clienteService.buscar(cliente);
		return SUCCESS;
	}

}
