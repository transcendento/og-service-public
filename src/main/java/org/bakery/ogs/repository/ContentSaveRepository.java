package org.bakery.ogs.repository;

import org.bakery.ogs.model.ContentView;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ContentSaveRepository extends JpaRepository<ContentView, String> {

}
