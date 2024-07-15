//
//  SpritePreview.swift
//  SwiftPokedex
//
//  Created by Federico Agnello on 15/07/24.
//

import SwiftUI

struct FRLGSpritePreview: View {
    var sprite: Image
    var body: some View {
        sprite
            .resizable()
            .interpolation(.none)
            .scaledToFit()
            .frame(width: 110, height: 110)
    }
}

#Preview {
    FRLGSpritePreview(sprite: Image("FireRedLeafGreen/1"))
}
