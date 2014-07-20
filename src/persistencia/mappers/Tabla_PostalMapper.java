package persistencia.mappers;

import java.util.List;

import bean.Tabla_Postal;

public interface Tabla_PostalMapper {
	public List<Tabla_Postal> obtenerTodos() throws Exception;

}
