package org.bakery.ogs.repository;

import java.util.List;

import org.bakery.ogs.model.DaysView;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DaysViewRepository extends JpaRepository<DaysView, Long> {

	List<DaysView> findByCntkod(String cntKod);
	
}
