package org.bakery.ogs.security.repository;

import java.util.Optional;

import org.bakery.ogs.security.model.RoleName;
import org.bakery.ogs.security.model.RoleView;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleViewRepository extends JpaRepository<RoleView, Long> {

	Optional<RoleView> findByRolename(RoleName rolename);

}
