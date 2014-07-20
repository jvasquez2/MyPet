package persistencia.mappers;

import java.util.List;

import bean.Mascota;

public interface MascotaMapper {
	
	Mascota obtener(String dni);
	
	List<Mascota> buscar(Mascota mascota);
	
	void registrar(Mascota mascota);
	
	void actualizar(Mascota mascota);
	
	void eliminar(String dni, Integer id);

}
