package org.bakery.ogs.security.repository;

import java.util.Optional;

import org.bakery.ogs.security.model.UserView;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserViewRepository extends JpaRepository<UserView, Long> {

	Optional<UserView> findByCntkod(String cntkod);
	
	Boolean existsByCntkod(String cntkod);

}
