//
//  PokemonDetails.swift
//  SwiftPokedex
//
//  Created by Federico Agnello on 28/06/24.
//

import SwiftUI

struct PokemonDetails: View {
    @Environment(ModelData.self) var modelData
    var pokemon:Pokemon
    
    var pokemonIndex: Int {
        modelData.pokemons.firstIndex(where: { $0.id == pokemon.id })!
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        VStack {
            
            Decoration(pokemon: pokemon)
            ImagePreview(image: pokemon.image)
                .offset(y: -120).padding(.bottom, -130)
            
            VStack (alignment: .leading) {
                HStack{
                    Text(pokemon.name).font(.title)
                    FavoriteButton(isSet: $modelData.pokemons[pokemonIndex].favorite)
                    Spacer()
                    TypeList(types: pokemon.type)
                }
                
                HStack {
                    Text("#\(pokemon.dex)").font(.subheadline)
                    Image("PixelPokedex")
                        .resizable()
                        .interpolation(.none)
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                    /*Spacer()
                     CatchButton(caughtEntities: $modelData.pokemons[pokemonIndex].caught_entities)*/
                }
                .padding(.horizontal, 5)
                .padding(.top, -10)
                
                Divider()
                Text("Base Stats")
                    .font(.title2)
                let total_stats = pokemon.base_stats.hp + pokemon.base_stats.attack + pokemon.base_stats.defense + pokemon.base_stats.special_attack + pokemon.base_stats.special_defense + pokemon.base_stats.speed
                
                VStack {
                    StatsBar(text: "Total", value: total_stats, total: true)
                    StatsBar(text: "HP", value: pokemon.base_stats.hp, total: false)
                    StatsBar(text: "Attack", value: pokemon.base_stats.attack, total: false)
                    StatsBar(text: "Defense", value: pokemon.base_stats.defense, total: false)
                    StatsBar(text: "Sp. Atk", value: pokemon.base_stats.special_attack, total: false)
                    StatsBar(text: "Sp. Def", value: pokemon.base_stats.special_defense, total: false)
                    StatsBar(text: "Speed", value: pokemon.base_stats.speed, total: false)
                    
                }
                
                Divider()
                VStack{
                    Text("Sprites")
                        .font(.title2)
                }
                
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                    VStack {
                        Spacer()
                        RBYSpriteView(sprite: pokemon.RB)
                        Spacer()
                        Text("Red/Blue")
                            .font(.system(size: 13))
                    }
                    VStack {
                        Spacer()
                        RBYSpriteView(sprite: pokemon.Y)
                        Spacer()
                        Text("Yellow")
                            .font(.system(size: 13))
                    }
                    VStack {
                        Spacer()
                        FRLGSpritePreview(sprite: pokemon.FRLG)
                        Spacer()
                        Text("FireRed/LeafGreen")
                            .font(.system(size: 13))
                            
                    }
                }
                .offset(CGSize(width: 0, height: -15))
            }
            .padding()
            
            Spacer()
        }
        .ignoresSafeArea()
    }
    
}

#Preview {
    PokemonDetails(pokemon: ModelData().pokemons[3]).environment(ModelData())
}

