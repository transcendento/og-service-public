package org.bakery.ogs.security.payload;

import javax.validation.constraints.NotBlank;

public class SignUpRequest {

	@NotBlank
	private String cntkod;

	@NotBlank
	private String pass;

	public String getCntkod() {
		return cntkod;
	}

	public void setCntKod(String cntkod) {
		this.cntkod = cntkod;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

}
