package org.bakery.ogs.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "daysordermovecontent_view")
public class ContentView {
	
	@Id
	private String daysordermovecontentid;

	private String daysordermoveidstr;

	private String prodlongname;

	private String amountstr;

	private String flagacceptstr;

	public String getDaysordermovecontentid() {
		return daysordermovecontentid;
	}

	public String getDaysordermoveidstr() {
		return daysordermoveidstr;
	}

	public String getProdlongname() {
		return prodlongname;
	}

	public String getAmountstr() {
		return amountstr;
	}

	public String getFlagacceptstr() {
		return flagacceptstr;
	}

}
