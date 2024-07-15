//
//  Pokemon.swift
//  SwiftPokedex
//
//  Created by Federico Agnello on 27/06/24.
//

import Foundation
import SwiftUI

struct Pokemon: Hashable, Codable, Identifiable {
    var id:Int
    var name:String
    var type:[String]
    var dex:String
    var base_stats:BaseStats
    var favorite:Bool
    var caught_entities:Int
    
    var image: Image {
        Image("Artwork/\(dex)")
    }
    
    var RB: Image {
        Image("RedBlue/\(id)")
    }
    
    var FRLG: Image {
        Image("FireRedLeafGreen/\(id)")
    }
    
    var Y: Image {
        Image("Yellow/\(id)")
    }
}

struct BaseStats: Hashable, Codable {
    var hp:Int
    var attack:Int
    var defense:Int
    var special_attack:Int
    var special_defense:Int
    var speed:Int
}
