package org.bakery.ogs.security;

import org.bakery.ogs.security.model.UserView;
import org.bakery.ogs.security.repository.UserViewRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	UserViewRepository regViewRepository;

	@Override
	@Transactional
	public UserDetails loadUserByUsername(String cntkod) throws UsernameNotFoundException {
		// Let people login with either username
		UserView user = regViewRepository.findByCntkod(cntkod)
				.orElseThrow(() -> new UsernameNotFoundException("User not found with username : " + cntkod));

		return UserPrincipal.create(user);
	}

	// This method is used by JWTAuthenticationFilter
	@Transactional
	public UserDetails loadUserById(Long cntid) {
		UserView user = regViewRepository.findById(cntid)
				.orElseThrow(() -> new UsernameNotFoundException("User not found with id : " + cntid));

		return UserPrincipal.create(user);
	}
}
