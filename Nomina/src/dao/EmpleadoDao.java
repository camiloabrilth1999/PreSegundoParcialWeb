package dao;

import util.Conexion;
import model.Empleado;

public class EmpleadoDao 
	extends Conexion<Empleado>	
	implements GenericDao<Empleado> {
	
	public EmpleadoDao(){
		super(Empleado.class);
	}
}
