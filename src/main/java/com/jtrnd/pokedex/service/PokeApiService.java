package com.jtrnd.pokedex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import skaro.pokeapi.client.PokeApiClient;
import skaro.pokeapi.resource.pokemon.Pokemon;

@Service
public class PokeApiService {
	
	@Autowired
	private PokeApiClient pokeApiClient;
	
	public Pokemon getPokemonDetails(String pokemonName) {
		if (pokemonName == null || pokemonName.isEmpty()) pokemonName = "ditto";
		return pokeApiClient.getResource(Pokemon.class, pokemonName).block();
	}
}