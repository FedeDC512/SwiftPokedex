//
//  ColorType.swift
//  SwiftPokedex
//
//  Created by Federico Agnello on 14/07/24.
//

import SwiftUI

struct ColorType: View {
    
    let type:String
    var typeColor: Color {
        if type == "Normal" { return .gray }
        else if type == "Fighting" { return .orange }
        else if type == "Flying" { return Color(red: 129 / 255, green: 185 / 255, blue: 239 / 255) }
        else if type == "Poison" { return .purple }
        else if type == "Ground" { return Color(red: 145 / 255, green: 81 / 255, blue: 32 / 255) }
        else if type == "Rock" { return Color(red: 175 / 255, green: 169 / 255, blue: 129 / 255) }
        else if type == "Bug" { return Color(red: 145 / 255, green: 162 / 255, blue: 25 / 255) }
        else if type == "Ghost" { return Color(red: 111 / 255, green: 65 / 255, blue: 112 / 255) }
        else if type == "Steel" { return .teal }
        else if type == "Fire" { return .red }
        else if type == "Water" { return .blue }
        else if type == "Grass" { return .green }
        else if type == "Electric" { return .yellow }
        else if type == "Psychic" { return .pink }
        else if type == "Ice" { return Color(red: 60 / 255, green: 206 / 255, blue: 243 / 255) }
        else if type == "Dragon" { return .indigo }
        else if type == "Dark" { return .black.opacity(0.7)}
        else if type == "Fairy" { return Color(red: 239 / 255, green: 112 / 255, blue: 239 / 255) }
        return .teal
    }
    
    var body: some View {
        VStack{
            Text(type)
                .padding(4)
                .background(typeColor)
                .cornerRadius(3)
                .foregroundColor(.white)
        }
    }
}

#Preview {
    ColorType(type: "Ghost")
}
