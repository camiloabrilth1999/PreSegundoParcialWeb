package dao;

import util.Conexion;
import model.Tipoconcepto;

public class TipoconceptoDao 
	extends Conexion<Tipoconcepto>	
	implements GenericDao<Tipoconcepto> {
	
	public TipoconceptoDao(){
		super(Tipoconcepto.class);
	}
}


