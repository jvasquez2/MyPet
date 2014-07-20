package negocio.servicios;

import java.util.List;
import bean.Mascota;

public interface MascotaService {
	
	public Mascota obtener(String dni) throws Exception;
	
	public List<Mascota> buscar(Mascota mascota) throws Exception;
	
	public void registrar(Mascota mascota) throws Exception;
	
	public void actualizar(Mascota mascota) throws Exception;
	
	public void eliminar(String dni, Integer id) throws Exception;

}
