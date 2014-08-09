package listener;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import negocio.servicios.SexoService;
import negocio.servicios.SexoServiceImpl;
import negocio.servicios.EspecieService;
import negocio.servicios.EspecieServiceImpl;
import negocio.servicios.Tabla_PostalService;
import negocio.servicios.Tabla_PostalServiceImpl;
import bean.Sexo;
import bean.Tabla_Postal;
import bean.Especie;

public class ListadosListener implements ServletContextListener {

	private SexoService sexoService = new SexoServiceImpl();
	private Tabla_PostalService tabla_postalService = new Tabla_PostalServiceImpl();
	private EspecieService especieService = new EspecieServiceImpl();
	
	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		try{
			List<Sexo> sexos = sexoService.obtenerTodos();
			List<Tabla_Postal> postales = tabla_postalService.obtenerTodos();
			List<Especie> especies = especieService.obtenerTodos();

			if (sexos== null) sexos = new ArrayList<Sexo>();
			if (postales == null) postales = new ArrayList<Tabla_Postal>();
			if (especies == null) especies = new ArrayList<Especie>();
			
			arg0.getServletContext().setAttribute("sexos", sexos);
			arg0.getServletContext().setAttribute("postales", postales);
			arg0.getServletContext().setAttribute("especies", especies);


		}catch(Exception e){
			e.printStackTrace();
		}
		
	}

}
