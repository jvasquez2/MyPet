package negocio.servicios;

import java.util.List;

import bean.Sexo;

public interface SexoService {
	public List<Sexo> obtenerTodos() throws Exception;
}
