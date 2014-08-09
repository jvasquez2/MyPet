package negocio.servicios;

import java.util.List;

import bean.Especie;

public interface EspecieService {
	public List<Especie> obtenerTodos() throws Exception;

}
