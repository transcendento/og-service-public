package org.bakery.ogs.controller;

import java.net.URI;
import java.util.Collections;

import javax.validation.Valid;

import org.bakery.ogs.exception.AppException;
import org.bakery.ogs.security.JwtTokenProvider;
import org.bakery.ogs.security.model.RoleName;
import org.bakery.ogs.security.model.RoleView;
import org.bakery.ogs.security.model.UserView;
import org.bakery.ogs.security.payload.ApiResponse;
import org.bakery.ogs.security.payload.JwtAuthenticationResponse;
import org.bakery.ogs.security.payload.LoginRequest;
import org.bakery.ogs.security.payload.SignUpRequest;
import org.bakery.ogs.security.repository.RoleViewRepository;
import org.bakery.ogs.security.repository.UserViewRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

@RestController
@RequestMapping("/api/auth")
public class AuthController {

	@Autowired
	AuthenticationManager authenticationManager;

	@Autowired
	UserViewRepository userRepository;

	@Autowired
	RoleViewRepository roleRepository;

	@Autowired
	PasswordEncoder passwordEncoder;

	@Autowired
	JwtTokenProvider tokenProvider;

	@PostMapping("/signin")
	public ResponseEntity<?> authenticateUser(@Valid @RequestBody LoginRequest loginRequest) {

		Authentication authentication = authenticationManager
				.authenticate((Authentication) new UsernamePasswordAuthenticationToken(loginRequest.getCntkod(),
						loginRequest.getPass()));

		SecurityContextHolder.getContext().setAuthentication(authentication);

		String jwt = tokenProvider.generateToken(authentication);
		return ResponseEntity.ok(new JwtAuthenticationResponse(jwt));
	}

	@PostMapping("/signup")
	public ResponseEntity<?> registerUser(@Valid @RequestBody SignUpRequest signUpRequest) {
		if (userRepository.existsByCntkod(signUpRequest.getCntkod())) {
			return new ResponseEntity<Object>(new ApiResponse(false, "Username is already taken!"),
					HttpStatus.BAD_REQUEST);
		}

		// Creating user's account
		UserView user = new UserView(signUpRequest.getCntkod(), signUpRequest.getPass());

		user.setPass(passwordEncoder.encode(user.getPass()));

		RoleView userRole = roleRepository.findByRolename(RoleName.ROLE_USER)
				.orElseThrow(() -> new AppException("User Role not set."));

		user.setRoles(Collections.singleton(userRole));

		UserView result = userRepository.save(user);

		URI location = ServletUriComponentsBuilder.fromCurrentContextPath().path("/users/{username}")
				.buildAndExpand(result.getCntkod()).toUri();

		return ResponseEntity.created(location).body(new ApiResponse(true, "User registered successfully"));
	}
}
