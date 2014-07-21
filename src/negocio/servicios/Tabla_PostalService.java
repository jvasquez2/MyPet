package negocio.servicios;

import java.util.List;

import bean.Tabla_Postal;

public interface Tabla_PostalService {
	public List<Tabla_Postal> obtenerTodos() throws Exception;

}
