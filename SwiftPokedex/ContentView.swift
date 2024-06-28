//
//  ContentView.swift
//  SwiftPokedex
//
//  Created by Federico Agnello on 27/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        PokemonList()
    }
}

#Preview {
    ContentView().environment(ModelData())
}

