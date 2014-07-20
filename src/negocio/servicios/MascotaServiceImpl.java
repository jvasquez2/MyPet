package negocio.servicios;

import java.util.List;

import org.apache.ibatis.session.SqlSession;



import persistencia.mappers.MascotaMapper;
import util.MyBatisUtil;
import bean.Mascota;

public class MascotaServiceImpl implements MascotaService {
	
	@Override
	public Mascota obtener(String dni) throws Exception {
		
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		MascotaMapper mascotaMapper = session.getMapper(MascotaMapper.class);
		Mascota mascota = mascotaMapper.obtener(dni);
		
		session.close();
		return mascota;
	}

	@Override
	public List<Mascota> buscar(Mascota mascota) throws Exception {
		
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		MascotaMapper mascotaMapper = session.getMapper(MascotaMapper.class);
		List<Mascota> mascotas = mascotaMapper.buscar(mascota);
		
		session.close();
		return mascotas;
	}

	@Override
	public void registrar(Mascota mascota) throws Exception {
		
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		MascotaMapper mascotaMapper = session.getMapper(MascotaMapper.class);
		mascotaMapper.registrar(mascota);
		
		session.commit();
		session.close();
		

	}

	@Override
	public void actualizar(Mascota mascota) throws Exception {

		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		MascotaMapper mascotaMapper = session.getMapper(MascotaMapper.class);
		mascotaMapper.actualizar(mascota);
		
		session.commit();
		session.close();
	}

	@Override
	public void eliminar(String dni, Integer id) throws Exception {

		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		MascotaMapper mascotaMapper = session.getMapper(MascotaMapper.class);
		mascotaMapper.eliminar(dni ,id);
		
		session.commit();
		session.close();
	}

}
