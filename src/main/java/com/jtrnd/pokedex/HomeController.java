package com.jtrnd.pokedex;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jtrnd.pokedex.service.PokeApiService;

@Controller
public class HomeController {
	
	@Autowired
	private PokeApiService pokeApiService;

	@RequestMapping(value = {"","/","/home"}, method = RequestMethod.GET)
	public String home(ModelMap model) {
		return "home";
	}
	
	@RequestMapping(value = "/view/{name}", method = RequestMethod.GET)
	public String viewPokemon(@PathVariable String name, ModelMap model) {
		model.addAttribute("pokemon", pokeApiService.getPokemonDetails(name));
		return "view";
	}
}