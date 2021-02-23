package org.bakery.ogs.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.bakery.ogs.model.AuthView;
import org.bakery.ogs.model.ContentView;
import org.bakery.ogs.model.DaysView;
import org.bakery.ogs.repository.AuthViewRepository;
import org.bakery.ogs.repository.ContentViewRepository;
import org.bakery.ogs.repository.DaysViewRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class ViewController {

	@Autowired
	AuthViewRepository authViewRepository;

	@Autowired
	DaysViewRepository daysViewRepository;

	@Autowired
	ContentViewRepository contentViewRepository;

	@GetMapping("/ogs/{tokenall}/auth")
	public List<AuthView> getAuthByTokenAll(@PathVariable(value = "tokenall") String tokenAll,
			HttpServletResponse response) {
		response.addHeader("Access-Control-Allow-Origin", "*");
		return authViewRepository.findByTokenall(tokenAll);
	}

	@GetMapping("/ogs/{cntkod}/ord")
	public List<DaysView> getAllDaysView(@PathVariable(value = "cntkod") String cntKod, HttpServletResponse response) {
		response.addHeader("Access-Control-Allow-Origin", "*");
		return daysViewRepository.findByCntkod(cntKod);
	}

	@GetMapping("/ogs/{id}/cnt")
	public List<ContentView> getContentById(@PathVariable(value = "id") String daysId, HttpServletResponse response) {
		response.addHeader("Access-Control-Allow-Origin", "*");
		return contentViewRepository.findByDaysordermoveidstr(daysId);
	}

}
