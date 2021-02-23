package org.bakery.ogs.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "daysordermoveauth_view")
public class AuthView {
	
	@Id
	private String cntid;
	
	private String cntkod;

	private String cntname;

	private String cntadres;

	private String tokenall;

	public String getCntid() {
		return cntid;
	}

	public String getCntkod() {
		return cntkod;
	}

	public String getCntname() {
		return cntname;
	}

	public String getCntadres() {
		return cntadres;
	}

	public String getTokenall() {
		return tokenall;
	}

}
