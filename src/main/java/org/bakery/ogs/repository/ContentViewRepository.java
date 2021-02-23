package org.bakery.ogs.repository;

import java.util.List;

import org.bakery.ogs.model.ContentView;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ContentViewRepository extends JpaRepository<ContentView, String> {

	List<ContentView> findByDaysordermoveidstr(String daysId);

}
