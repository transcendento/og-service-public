package org.bakery.ogs.repository;

import java.util.List;

import org.bakery.ogs.model.AuthView;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AuthViewRepository extends JpaRepository<AuthView, String> {

	List<AuthView> findByTokenall(String tokenAll);

}
