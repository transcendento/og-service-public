package org.bakery.ogs.security;

import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

import org.bakery.ogs.security.model.UserView;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.fasterxml.jackson.annotation.JsonIgnore;

@SuppressWarnings("serial")
public class UserPrincipal implements UserDetails {

	private Long userid;

	private String cntkod;

	@JsonIgnore
	private String pass;

	private Collection<? extends GrantedAuthority> authorities;

	public UserPrincipal(Long userid, String cntkod, String pass, Collection<? extends GrantedAuthority> authorities) {
		this.userid = userid;
		this.cntkod = cntkod;
		this.pass = pass;
		this.authorities = authorities;
	}

	public static UserPrincipal create(UserView user) {
		List<GrantedAuthority> authorities = user.getRoles().stream()
				.map(role -> new SimpleGrantedAuthority(role.getRolename().name())).collect(Collectors.toList());

		return new UserPrincipal(user.getUserid(), user.getCntkod(), user.getPass(), authorities);
	}

	public Long getUserid() {
		return userid;
	}

	public String getCntkod() {
		return cntkod;
	}

	public String getPass() {
		return pass;
	}

	@Override
	public String getUsername() {
		return cntkod;
	}

	@Override
	public String getPassword() {
		return pass;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return authorities;
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o)
			return true;
		if (o == null || getClass() != o.getClass())
			return false;
		UserPrincipal that = (UserPrincipal) o;
		return Objects.equals(userid, that.userid);
	}

	@Override
	public int hashCode() {

		return Objects.hash(userid);
	}

}
