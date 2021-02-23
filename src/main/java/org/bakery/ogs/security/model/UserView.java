package org.bakery.ogs.security.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name = "daysordermoveuser")
public class UserView {

	/*
	 * Oracle
	 */
	/*
	 * @Id
	 * 
	 * @GeneratedValue(strategy=GenerationType.SEQUENCE, generator = "id_Sequence")
	 * 
	 * @SequenceGenerator(name = "id_Sequence", sequenceName =
	 * "DAYSORDERMOVEUSER_seq")
	 */

	/*
	 * MySQL
	 */ 
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long userid;

	private String cntkod;

	private String pass;

	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "daysordermoverole", joinColumns = @JoinColumn(name = "userid"), inverseJoinColumns = @JoinColumn(name = "roleid"))
	private Set<RoleView> roles = new HashSet<>();

	public UserView() {

	}

	public UserView(String cntkod, String pass) {
		this.cntkod = cntkod;
		this.pass = pass;
	}

	public Long getUserid() {
		return userid;
	}

	public void setUserid(Long userid) {
		this.userid = userid;
	}

	public String getCntkod() {
		return cntkod;
	}

	public void setCntkod(String cntkod) {
		this.cntkod = cntkod;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public Set<RoleView> getRoles() {
		return roles;
	}

	public void setRoles(Set<RoleView> roles) {
		this.roles = roles;
	}

}
