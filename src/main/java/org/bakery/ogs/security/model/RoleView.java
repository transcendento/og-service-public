package org.bakery.ogs.security.model;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "domroleview")
public class RoleView {

	@Id
	private Long roleid;

	@Enumerated(EnumType.STRING)
	private RoleName rolename;

	public RoleView() {

	}

	public RoleView(RoleName rolename) {
		this.rolename = rolename;
	}

	public Long getRoleid() {
		return roleid;
	}

	public RoleName getRolename() {
		return rolename;
	}

}
