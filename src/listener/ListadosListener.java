package listener;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import negocio.servicios.SexoService;
import negocio.servicios.SexoServiceImpl;
import negocio.servicios.Tipo_UsuarioService;
import negocio.servicios.Tipo_UsuarioServiceImpl;
import bean.Sexo;

public class ListadosListener implements ServletContextListener {

	private SexoService sexoService = new SexoServiceImpl();
	private Tipo_UsuarioService tipo_usuarioService = new Tipo_UsuarioServiceImpl();
	
	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		try{
			List<Sexo> sexos = sexoService.obtenerTodos();
			if(sexos==null) sexos = new ArrayList<Sexo>();
			arg0.getServletContext().setAttribute("sexos", sexos);
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}

}
