//
//  TypeList.swift
//  SwiftPokedex
//
//  Created by Federico Agnello on 14/07/24.
//

import SwiftUI

struct TypeList: View {
    
    var types:[String]
    
    var body: some View {
        ForEach(0..<types.count) {
            i in ColorType(type: types[i])
        }
    }
}

#Preview {
    TypeList(types: ["Normal", "Fighting", "Flying", "Poison", "Ground", "Rock", "Bug", "Ghost", "Steel", "Fire", "Water", "Grass", "Electric", "Psychic", "Ice", "Dragon", "Dark", "Fairy", "Bird"])
}
