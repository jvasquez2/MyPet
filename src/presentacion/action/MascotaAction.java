package presentacion.action;

import org.apache.ibatis.mapping.VendorDatabaseIdProvider;

import negocio.servicios.MascotaService;
import negocio.servicios.MascotaServiceImpl;
import bean.Mascota;

import com.opensymphony.xwork2.ActionSupport;

public class MascotaAction extends ActionSupport {

	private Mascota mascota;

	public Mascota getMascota() {
		return mascota;
	}

	public void setMascota(Mascota mascota) {
		this.mascota = mascota;
	}

	public String registrar() throws Exception {

		MascotaService mascotaService = new MascotaServiceImpl();
		mascotaService.registrar(mascota);

		return SUCCESS;
	}

}
