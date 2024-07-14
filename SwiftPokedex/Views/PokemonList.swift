//
//  PokemonList.swift
//  SwiftPokedex
//
//  Created by Federico Agnello on 28/06/24.
//

import SwiftUI

struct PokemonList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    
    var filteredPokemons: [Pokemon] {
        modelData.pokemons.filter { pokemon in
            (!showFavoritesOnly || pokemon.favorite)
        }
    }
    
    var body: some View {
        
        NavigationSplitView{
            List {
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Show favorites only")
                })
                .tint(.blue)
                ForEach(filteredPokemons) { pokemon in NavigationLink{
                    PokemonDetails(pokemon: pokemon)
                } label: {PokemonRow(pokemon: pokemon)}
                }
            }
            .navigationTitle("Pokédex")
        } detail: {Text("Choose a Pokemon")}
            .tint(.white)
    }
}

#Preview {
    PokemonList().environment(ModelData())
}
