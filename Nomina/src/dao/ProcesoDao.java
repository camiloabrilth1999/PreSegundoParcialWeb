package dao;

import util.Conexion;
import model.Proceso;

public class ProcesoDao 
	extends Conexion<Proceso>	
	implements GenericDao<Proceso> {
	
	public ProcesoDao(){
		super(Proceso.class);
	}
}

