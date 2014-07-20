package presentacion.action;

import org.apache.ibatis.mapping.VendorDatabaseIdProvider;

import negocio.servicios.MascotaService;
import negocio.servicios.MascotaServiceImpl;
import bean.Mascota;

import com.opensymphony.xwork2.ActionSupport;

import freemarker.core.ReturnInstruction.Return;


public class MascotaAction extends ActionSupport{
	
	


	private Mascota mascota;
	
	
	MascotaService mascotaService = new MascotaServiceImpl();
	
	
	public Mascota getMascota() {
		return mascota;
	}


	public void setMascota(Mascota mascota) {
		this.mascota = mascota;
	}
	
	public String registrar() throws Exception{
		mascotaService.registrar(mascota);
		
		return SUCCESS;
	}

}
