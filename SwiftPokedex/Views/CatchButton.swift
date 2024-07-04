//
//  CatchButton.swift
//  SwiftPokedex
//
//  Created by Federico Agnello on 28/06/24.
//

import SwiftUI

struct CatchButton: View {
    @Binding var caughtEntities: Int
    
    var body: some View {
        Button() {
            caughtEntities = caughtEntities < 5 ? caughtEntities + 1 : 0
        } label: {
            Text("\(caughtEntities)")
                .foregroundStyle(.black)
                .bold()
            Image("ball")
                .resizable()
                .scaledToFit()
                .frame(height: 30)
        }
    }
}

#Preview {
    CatchButton(caughtEntities: .constant(0))
}
