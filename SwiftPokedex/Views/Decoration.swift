//
//  Decoration.swift
//  SwiftPokedex
//
//  Created by Federico Agnello on 27/06/24.
//

import SwiftUI

struct Decoration: View {
    var pokemon:Pokemon
    var body: some View {
        let imageName:String
        if [29, 30, 31, 32, 33, 34, 35, 36, 39, 40].contains(pokemon.id) {
            imageName = "MtMoon"
        } else if [50, 51].contains(pokemon.id) {
            imageName = "DiglettsCave"
        } else if [131, 133, 137, 143].contains(pokemon.id) {
            imageName = "SilphCompany"
        } else if [102, 103, 113, 115, 123, 127, 128, 147, 148, 149].contains(pokemon.id) {
            imageName = "SafariZone"
        } else if pokemon.id == 146 {
            imageName = "VictoryRoad"
        } else if pokemon.id == 150 {
            imageName = "CeruleanCave"
        } else if pokemon.id == 151 {
            imageName = "RocketHideout"
        } else if pokemon.id == 48 || pokemon.id == 49 {
            imageName = "BerryForest"
        } else if pokemon.type.contains("Bug") || pokemon.type.contains("Grass") || pokemon.id == 25  || pokemon.id == 26 {
            imageName = "ViridianForest"
        } else if pokemon.type.contains("Electric") || pokemon.id == 145 {
            imageName = "PowerPlant"
        } else if pokemon.type.contains("Ice") || pokemon.id == 144 || pokemon.id == 86 || pokemon.id == 90 {
            imageName = "SeafoamIslands"
        } else if pokemon.type.contains("Fire") {
            imageName = "MtEmber"
        } else if pokemon.type.contains("Ground"){
            imageName = "RockTunnel"
        } else if pokemon.type.contains("Rock") {
            imageName = "TanobyChambers"
        } else if pokemon.type.contains("Water") {
            imageName = "AlteringCave"
        } else if pokemon.type.contains("Fighting") {
            imageName = "RockTunnel"
        } else if pokemon.type.contains("Ghost") {
            imageName = "PokemonTower"
        } else if pokemon.type.contains("Poison") || pokemon.id == 132 {
            imageName = "PokemonMansion"
        } else if pokemon.type.contains("Flying") {
            imageName = "BerryForest"
        } else if pokemon.type.contains("Psychic") {
            imageName = "DottedHole"
        } else {
            imageName = "ViridianForest"
        }
        
        return Image(imageName)
            .resizable()
            .interpolation(.none) //Nearest Neighbor
            .aspectRatio(contentMode: .fit)
    }
}

#Preview {
    Decoration(pokemon: ModelData().pokemons[150]).environment(ModelData())
}
