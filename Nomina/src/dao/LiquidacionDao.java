package dao;

import util.Conexion;
import model.Liquidacion;

public class LiquidacionDao 
	extends Conexion<Liquidacion>	
	implements GenericDao<Liquidacion> {
	
	public LiquidacionDao(){
		super(Liquidacion.class);
	}
}
