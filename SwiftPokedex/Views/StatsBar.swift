//
//  StatsBar.swift
//  SwiftPokedex
//
//  Created by Federico Agnello on 14/07/24.
//

import SwiftUI

struct StatsBar: View {
    
    let text:String
    let value:Int
    let total:Bool
    
    var barColor: Color {
        if text == "Total" { return .teal }
        else if text == "HP" { return .green }
        else if text == "Attack" { return .yellow }
        else if text == "Defense" { return .orange }
        else if text == "Sp. Atk" { return .cyan }
        else if text == "Sp. Def" { return .blue }
        else if text == "Speed" { return .purple }
        return .gray
    }
    
    var body: some View {
        let progress:Double = total ? Double(value) / 680.0 : Double(value) / 255.0
        
        ZStack {
            HStack {
                Text(text)
                    .bold()
                Spacer()
                Text("\(value)")
                    .bold()
            }
            .padding(.horizontal, 5)
            
            HStack {
                ProgressView(value: progress)
                    .tint(barColor)
                    .frame(width: 200)
                    .offset(CGSize(width: 15.0, height: 0))
            }
        }
    }
}

#Preview {
    StatsBar(text: "Attack", value: 25, total: false)
}
