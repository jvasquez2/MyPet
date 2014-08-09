package persistencia.mappers;

import java.util.List;

import bean.Especie;

public interface EspecieMapper {
	public List<Especie> obtenerTodos() throws Exception;

}
