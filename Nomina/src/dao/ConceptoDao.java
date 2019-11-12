package dao;

import util.Conexion;
import model.Concepto;

public class ConceptoDao 
	extends Conexion<Concepto>	
	implements GenericDao<Concepto> {
	
	public ConceptoDao(){
		super(Concepto.class);
	}
}
