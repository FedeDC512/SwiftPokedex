//
//  RBYSpriteView.swift
//  SwiftPokedex
//
//  Created by Federico Agnello on 15/07/24.
//

import SwiftUI

struct RBYSpriteView: View {
    var sprite: Image
    var body: some View {
        sprite
            .resizable()
            .interpolation(.none)
            .scaledToFit()
            .frame(width: 80, height: 80)
    }
}

#Preview {
    RBYSpriteView(sprite: Image("RedBlue/1"))
}
