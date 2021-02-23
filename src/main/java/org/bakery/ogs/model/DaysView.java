package org.bakery.ogs.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "daysordermove_view")
public class DaysView {
	
	@Id
	private String daysordermoveid;

	private String cntkod;

	private String cntnamestr;

	private String daysorderdate;

	private String cntadresstr;

	private String indstr;

	public String getDaysordermoveid() {
		return daysordermoveid;
	}

	public String getCntkod() {
		return cntkod;
	}

	public String getCntnamestr() {
		return cntnamestr;
	}

	public String getDaysorderdate() {
		return daysorderdate;
	}

	public String getCntadresstr() {
		return cntadresstr;
	}

	public String getIndstr() {
		return indstr;
	}

}
