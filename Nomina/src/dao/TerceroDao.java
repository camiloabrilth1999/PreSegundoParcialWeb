package dao;

import util.Conexion;
import model.Tercero;

public class TerceroDao 
	extends Conexion<Tercero>	
	implements GenericDao<Tercero> {
	
	public TerceroDao(){
		super(Tercero.class);
	}
}
